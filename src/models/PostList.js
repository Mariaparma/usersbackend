class PostList {
    constructor() {
        this.posts = [];
    }


addPost(post) {
    this.posts.push(post);
}

getAllPost() {
    return this.posts;
}


getPostsById(id) {
    const post = this.posts.find(post => post.id == id);
    if (!post) throw new Error("Post não encontrado");
    return post;
}

updatePost(id, updatedData) {
    const user = this.getPostById(id);
    Object.assign(post, updatedData);
    return post;
}

deletePost(id) {
    this.posts = this.posts.filter(post => post.id != id);
}

}

module.exports = PostList;