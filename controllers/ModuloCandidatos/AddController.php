<?php
include_once "./models/CandidatosModel.php";
class AddController
{
    private $candidatoModel;

    public function __construct($dbConnection)
    {
        $this->candidatoModel = new CandidatosModel($dbConnection);
    }

    public function addCandidatos($titulo, $id)
    {
        $idCandidato = isset($id) ? $id : "";
        $ingles = $this->candidatoModel->getConfIngles();
        $perfilBuscado = $this->candidatoModel->getConfPerfilBuscado();
        $perfilCandidato = $this->candidatoModel->getConfPerfilCandidato();
        $tipoRemuneracion = $this->candidatoModel->getTipoRemuneracion();
        $tipoMoneda = $this->candidatoModel->getTipoMoneda();
        $reclutadores = $this->candidatoModel->getReclutador();
        $disponibilidades = $this->candidatoModel->getDisponibilidad();
        $asistencias = $this->candidatoModel->getAsistencia();
        $title = $titulo;
        $isEdit = isset($id) && is_numeric($id);

        if ($isEdit) {
            $candidatoInfo = $this->candidatoModel->getCandidatoCompleto($id);
            $infoCandidato = $candidatoInfo['Candidato'];
            $infoPerfilesBuscados = $candidatoInfo['PerfilesBuscados'];
            $infoRemuneraciones = $candidatoInfo['Remuneraciones'];
        } else {
            $candidatoInfo = [
                'Candidato' => [],
                'PerfilesBuscados' => [],
                'Remuneraciones' => []
            ];
            $infoCandidato = $infoPerfilesBuscados = $infoRemuneraciones = [];
        }
        // print_r($candidatoInfo);
        include "./views/moduloCandidatos/forms-wizard.php";
    }
}
