const express = require("express");
const router = express.Router();
const usersController = require("../controllers/usersControllers");

/**
 * @swagger
 * tags:
 *   name: Users
 *   description: Gerenciamento de Usuários
 */
/** 
 * @swagger
 * /api/usuarios:
 *   get:       
 * *     summary: Retorna todos os usuários
 *     tags: [Users]
 *    responses:
 * *       200:
 * *         description: Lista de usuários retornada com sucesso
 */
router.get("/", usersController.getAllUsers);
/**
 * @swagger
 * /api/usuarios/{id}:
 *   get:
 *     summary: Retorna um usuário específico
 *     tags: [Users]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID do usuário a ser retornado
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: Usuário retornado com sucesso
 *       404:
 *         description: Usuário não encontrado
 */
router.get("/:id", usersController.getUserById);
/**
 * @swagger
 * /api/usuarios:
 *   post:
 *     summary: Adiciona um novo usuário
 *     tags: [Users]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               email:
 *                 type: string
 *     responses:
 *       201:
 *         description: Usuário adicionado com sucesso
 */
router.post("/", usersController.addUser);
/**
 * @swagger
 * /api/usuarios/{id}:
 *   put:
 *     summary: Atualiza um usuário específico
 *     tags: [Users]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID do usuário a ser atualizado
 *         schema:
 *           type: string
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               email:
 *                 type: string
 *     responses:
 *       200:
 *         description: Usuário atualizado com sucesso
 */
router.put("/:id", usersController.updateUser); 
/**
 * @swagger
 * /api/usuarios/{id}:
 *   delete:
 *     summary: Deleta um usuário específico
 *     tags: [Users]
 *     parameters:
 *       - name: id
 *         in: path
 *         required: true
 *         description: ID do usuário a ser deletado
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: Usuário deletado com sucesso
 */
router.delete("/:id", usersController.deleteUser);


module.exports = router;