const { v4: uuid4 } =  require('uuid');

class Post {
    constructor(likes, comments, description, image, date) {
        this.id = Date.now().toString();
        this.likes = likes;
        this.comments = comments;
        this.description = description;
        this.content = this.content;
        this.image = image;
        this.date = date;
    }
}

module.exports = Post;