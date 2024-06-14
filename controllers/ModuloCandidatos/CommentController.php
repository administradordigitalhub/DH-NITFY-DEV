<?php
include_once "../../models/CandidatosModel.php";
class CommentController
{
    private $candidatoModel;

    public function __construct($dbConnection)
    {
        $this->candidatoModel = new CandidatosModel($dbConnection);
    }

    public function showComment($id_candidato_comment)
    {
        $comment = $this->candidatoModel->getcomment($id_candidato_comment);
        return $comment;
    }
}
