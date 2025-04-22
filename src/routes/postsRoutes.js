const express = require("express");
const router = express.Router();
const postController = require("../controllers/postsController");


/**
 * @swagger
 * tags:
 *   name: Posts
 *   description: Gerenciamento de Posts
 */
/**
 * @swagger
 * /posts:
 *   get:
 *     summary: Retorna todos os posts
 *     tags: [Posts]
 *     responses:
 *       200:
 *         description: Lista de posts retornada com sucesso
 *       500:
 *         description: Erro ao retornar a lista de posts
 */
router.get("/posts", postController.getAllPosts);
/**
 * @swagger
 * /posts/{id}:
 *   get:
 *     summary: Retorna um post específico
 *     tags: [Posts]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID do post a ser retornado
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: Post retornado com sucesso
 *       404:
 *         description: Post não encontrado
 */
router.get("/:id", postsController.getPost);
/**
 * @swagger
 * /posts/{id}:
 *   get:
 *     summary: Retorna um post específico
 *     tags: [Posts]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID do post a ser retornado
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: Post retornado com sucesso
 *       404:
 *         description: Post não encontrado
 */
router.get("/posts/:id", postController.getPostById);
/**
 * @swagger
 * /userpost:
 *   get:
 *     summary: Retorna todos os posts de um usuário específico
 *     tags: [Posts]
 *     parameters:
 *       - name: userId
 *         in: query
 *         required: true
 *         description: ID do usuário cujos posts devem ser retornados
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: Lista de posts retornada com sucesso
 */
router.get("/userpost", postController.getPostByUser);
/**
 * 
 * @swagger
 * /posts:
 *   post:
 *     summary: Cria um novo post
 *     tags: [Posts]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               likes:
 *                 type: integer
 *               comments:
 *                 type: integer
 *               description:
 *                 type: string
 *               image:
 *                 type: string
 *               date:
 *                 type: string
 *     responses:
 *       201:
 *         description: Post criado com sucesso
 */
router.post("/posts", postController.createPost);
/**
 * @swagger
 * /posts/{id}:
 *   put:
 *     summary: Atualiza um post existente
 *     tags: [Posts]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID do post a ser atualizado
 *         schema:
 *           type: string
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               likes:
 *                 type: integer
 *               comments:
 *                 type: integer
 *               description:
 *                 type: string
 *               image:
 *                 type: string
 *               date:
 *                 type: string
 *     responses:
 *       200:
 *         description: Post atualizado com sucesso
 */
router.put("/posts/:id", postController.updatePost);
/**     
 * @swagger
 * /posts/{id}:
 *   delete:
 *     summary: Deleta um post existente
 *     tags: [Posts]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID do post a ser deletado
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: Post deletado com sucesso
 */
router.delete("/posts/:id", postController.deletePost);
/**
 * @swagger
 * /userpost:
 *   get:
 *     summary: Retorna todos os posts de um usuário específico
 *     tags: [Posts]
 *     parameters:
 *       - name: userId
 *         in: query
 *         required: true
 *         description: ID do usuário cujos posts devem ser retornados
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: Lista de posts retornada com sucesso
 */
router.get("/userpost", postController.getPostByUser);

module.exports = router;