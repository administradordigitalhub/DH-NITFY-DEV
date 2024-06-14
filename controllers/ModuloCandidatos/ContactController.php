<?php
include_once "../../models/CandidatosModel.php";
class ContactController
{
    private $candidatoModel;

    public function __construct($dbConnection)
    {
        $this->candidatoModel = new CandidatosModel($dbConnection);
    }

    public function showContact($id_candidato_contact)
    {
        $contact = $this->candidatoModel->getcontact($id_candidato_contact);
        return $contact;
    }
}
