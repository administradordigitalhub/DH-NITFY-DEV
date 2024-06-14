<?php
session_start(); // Iniciar manejo de sesiones

// Comprobar si existe una sesión de usuario
if (isset($_SESSION['usuario_id'])) {
    header('Location: /views/home.php'); // Redirige al home si ya está logueado
    exit();
} else {
    header('Location: login.php'); // Redirige al login si no hay sesión
    exit();
}
