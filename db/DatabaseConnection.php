<?php
class DatabaseConnection
{
    private static $instance = null;
    private $connection;

    private $host = 'localhost'; // o la dirección del servidor de base de datos
    private $user = 'root'; // el usuario de la base de datos
    private $pass = ''; // la contraseña del usuario
    private $name = 'digitalh_bd_principal_2'; // Asegúrate que el nombre es correcto

    private function __construct()
    {
        $this->connection = new mysqli($this->host, $this->user, $this->pass, $this->name);
        if ($this->connection->connect_error) {
            die("Connection failed: " . $this->connection->connect_error);
        }
    }

    public function beginTransaction()
    {
        $this->connection->begin_transaction();
    }

    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    public function getConnection()
    {
        return $this->connection;
    }

    private function __clone()
    {
        // Evita la clonación del objeto
    }

    private function __wakeup()
    {
        // Evita la deserialización del objeto
    }
}
