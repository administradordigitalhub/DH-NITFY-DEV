<?php
session_start();
// session_destroy();
// exit();
require_once './models/UserModel.php';
require 'db/DatabaseConnection.php';

$dbConnection = DatabaseConnection::getInstance()->getConnection();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // print_r($_POST);
    $username = $_POST['username'] ?? '';
    $password = $_POST['userpass'] ?? '';

    if ($username && $password) {
        $userModel = new UserModel($dbConnection);
        $usuario = $userModel->getUserByUsername($username);

        if ($usuario && password_verify($password, $usuario['contrasena_usuario'])) {
            $_SESSION['usuario_id'] = $usuario['id_usuario'];
            header('Location: views/home.php');
            exit();
        } else {
            $error = "Usuario o contraseña incorrectos";
        }
    } else {
        $error = "Debe completar todos los campos.";
    }
}

include './views/login.php';
