<?php
include_once '../../controllers/ModuloCandidatos/CommentController.php';
include_once '../../db/DatabaseConnection.php';

$dbInstance = DatabaseConnection::getInstance();
$dbConnection = $dbInstance->getConnection();

$commentController = new CommentController($dbConnection);

$input = json_decode(file_get_contents("php://input"), true);

if (isset($input['id'])) {
    $id_candidato_comment = $input['id'];
    $commentData = $commentController->showComment($id_candidato_comment);
    echo json_encode($commentData);
} else {
    echo json_encode(array('error' => 'No ID provided'));
}
