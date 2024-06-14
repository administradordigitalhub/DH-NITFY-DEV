<?php
include_once "../../models/CandidatosModel.php";
class SalaryController
{
    private $candidatoModel;

    public function __construct($dbConnection)
    {
        $this->candidatoModel = new CandidatosModel($dbConnection);
    }

    public function showSalary($id_candidato_salary)
    {
        $salary = $this->candidatoModel->getSalary($id_candidato_salary);
        return $salary;
    }
}
