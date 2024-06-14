<?php
include_once "../../models/CandidatosModel.php";
require '../../db/DatabaseConnection.php';

$dbConnection = DatabaseConnection::getInstance();
$candidatoModel = new CandidatosModel($dbConnection->getConnection());

// Asegurarse de que el contenido recibido es de tipo JSON
header('Content-Type: application/json');

// Decodificar el JSON recibido desde el cliente
$input = file_get_contents("php://input");
$data = json_decode($input, true);

// Verificar que los datos se han recibido correctamente
if (is_array($data)) {
    // print_r($data);
    // die();
    // Puedes acceder a los datos como $data['infoUser'], $data['perfilBuscado'], etc.
    $infoUser = isset($data['infoUser']) ? $data['infoUser'] : [];
    $perfilBuscado = isset($data['perfilBuscado']) ? $data['perfilBuscado'] : [];
    $remuneraciones = isset($data['remuneraciones']) ? $data['remuneraciones'] : [];

    $isEdit = isset($data['id']);
    $isDeleteRemuneracion = isset($data['isDeleteRemuneracion']);
    $isEditRemuneracion = isset($data['isEditRemuneracion']);
    // Procesar los datos aquí, por ejemplo, guardar en la base de datos, etc.
    if (!$isDeleteRemuneracion && !$isEditRemuneracion) {
        if ($isEdit) {
            $candidatoModel->editarCandidato($data['id'], $infoUser, $perfilBuscado, $remuneraciones);
        } else {
            $candidatoModel->registrarCandidato($infoUser, $perfilBuscado, $remuneraciones);
        }
    }
    if ($isEditRemuneracion) {
        $limiteInferior = isset($data['limiteInferior']) ? $data['limiteInferior'] : '0';
        $limiteSuperior = isset($data['limiteSuperior']) ? $data['limiteSuperior'] : '0';
        $tipoRemuneracion = isset($data['tipoRemuneracionValue']) ? $data['tipoRemuneracionValue'] : '0';
        $tipoMoneda = isset($data['tipoMonedaValue']) ? $data['tipoMonedaValue'] : '0';
        $candidatoModel->actualizarRemuneracion($limiteInferior, $limiteSuperior, $tipoRemuneracion, $tipoMoneda, $data['id_remuneracion']);
    }
    if ($isDeleteRemuneracion) {
        $candidatoModel->eliminarRemuneracion($data['id_remuneracion']);
    }

    // Devolver una respuesta
    echo json_encode(["success" => true, "message" => "Datos recibidos y procesados correctamente"]);
} else {
    // Enviar una respuesta de error
    echo json_encode(["success" => false, "message" => "Error al recibir los datos"]);
}
