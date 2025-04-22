require("dotenv").config();

const express = require("express");
const cors = require("cors");
const usersRoutes = require("./src/routes/usersRoutes");
const postsRoutes = require("./src/routes/postsRoutes");
const reportRoutes = require("./src/routes/reportRoutes");
const setupSwagger = require('./src/config/swagger');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

app.use ("/api", usersRoutes);
app.use ("/api", postsRoutes);
app.use ("/api", reportRoutes);
setupSwagger(app);

app.get("/", (req, res) => {
    res.send("EUUUU AMOOOO DEMAISSSS BACKEND <3");
});

app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});