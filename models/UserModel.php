<?php
class UserModel
{
    private $db;

    public function __construct($dbConnection)
    {
        $this->db = $dbConnection;
    }

    public function getUserByUsername($username)
    {
        $stmt = $this->db->prepare("SELECT * FROM tbl_usuarios WHERE nombre_usuario = ?");
        if (!$stmt) {
            // Error de preparación de la consulta
            return false;
        }
        $stmt->bind_param("s", $username); // "s" indica que el parámetro es una cadena (string)
        $stmt->execute();
        $result = $stmt->get_result(); // Obtiene el resultado
        return $result->fetch_assoc(); // Obtiene el usuario como un array asociativo
    }
}
