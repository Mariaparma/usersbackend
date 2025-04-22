const Post = require("../models/Post");
const PostList = require("../models/PostList");
const lista = new PostList();

// Adicionando posts iniciais
lista.addPost(new Post("1945 mil", "", "amo as dev girls", "amigas bff forever, url", "07-03-2008"));
lista.addPost(new Post("luan", "luan@gmail.com", 25));

// Métodos do controlador
const getAllPosts = (req, res) => {
    res.json(lista.getAllPosts());
};

const getPostById = (req, res) => {
    try {
        const post = lista.getPostById(req.params.id);
        res.json(post);
    } catch (error) {
        res.status(404).json({ message: "Post não encontrado", error });
    }
};

const createPost = (req, res) => {
    try {
        const { title, content, author, date } = req.body;
        if (!title || !content || !author || !date) {
            throw new Error("Todos os campos são obrigatórios");
        }

        const newPost = new Post(title, content, author, date);
        lista.addPost(newPost);
        res.status(201).json(newPost);
    } catch (error) {
        res.status(400).json({ message: error.message, error });
    }
};

const updatePost = (req, res) => {
    try {
        const updatedPost = lista.updatePost(req.params.id, req.body);
        res.json(updatedPost);
    } catch (error) {
        res.status(404).json({ message: "Erro ao atualizar o post", error });
    }
};

const deletePost = (req, res) => {
    try {
        lista.deletePost(req.params.id);
        res.status(200).json({ message: "Post deletado com sucesso", idDeletado: req.params.id });
    } catch (error) {
        res.status(404).json({ message: "Erro ao deletar o post", error });
    }
};

// Exportando os métodos
module.exports = {
    getAllPosts,
    getPostById,
    createPost,
    updatePost,
    deletePost,
};