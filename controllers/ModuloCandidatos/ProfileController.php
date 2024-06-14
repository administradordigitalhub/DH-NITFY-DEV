<?php
include_once "../../models/CandidatosModel.php";
class ProfileController
{
    private $candidatoModel;

    public function __construct($dbConnection)
    {
        $this->candidatoModel = new CandidatosModel($dbConnection);
    }

    public function showProfile($id_candidato_profile)
    {
        $profiles = $this->candidatoModel->getProfile($id_candidato_profile);
        return $profiles;
    }
}
