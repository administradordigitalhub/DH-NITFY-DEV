<?php
include_once "./models/CandidatosModel.php";
class CandidatoController
{
    private $candidatoModel;

    public function __construct($dbConnection)
    {
        $this->candidatoModel = new CandidatosModel($dbConnection);
    }

    public function showCandidato($isFilter, $experiencies)
    {
        // print_r($experiencies);
        $candidatos = $this->candidatoModel->list($experiencies);
        $perfilDH = $this->candidatoModel->getConfPerfil();

        if ($isFilter) {
            // Devuelve los datos en formato JSON si la solicitud es para filtrar
            header('Content-Type: application/json');
            echo json_encode([
                'candidatos' => $candidatos,
                // 'perfilDH' => $perfilDH
            ]);
            
        } else {
            // Incluye la vista HTML para visualizaciones normales
            include "./views/moduloCandidatos/tables-tabulator.php";
        }
    }
}
