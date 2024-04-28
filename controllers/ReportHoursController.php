<?php
class ReportHoursController
{
    private $model;

    public function __construct(ReportHoursModel $model)
    {
        $this->model = $model;
    }


    public function listConsultor($fechaInicio, $fechaFin)
    {
        if (!isset($_SESSION['userId'])) {
            require './views/login.php';
            session_destroy();
        }
        $configuraciones = $this->model->getConf();
        $userId = $_SESSION['userId'];
        $courses = $this->model->getServicioActividadesIdConsultor($userId, $fechaInicio, $fechaFin);
        $_SESSION['fechaInicioBuscar'] = $fechaInicio;
        $_SESSION['fechaFinBuscar'] = $fechaFin;
        $fechaInicioBuscar = $_SESSION['fechaInicioBuscar'];
        $fechaFinBuscar = $_SESSION['fechaFinBuscar'];
        $usuario = $this->model->getConsultorId($userId);
        $informacionEquipo1 = $this->model->getServicioConsultor($userId);
        $modalidades = $this->model->getConfModalidad();
        // print_r($modalidades);

        // Combinar todos los datos en un solo array
        $data = [
            'cursos' => $courses,
            'usuarioVista' => $usuario,
            'informacionEquipo' => $informacionEquipo1,
            'modalidades' => $modalidades,
            'configuraciones' => $configuraciones,
        ];

        require './views/home.php';
    }


    public function login()
    {
        $modalidades = $this->model->getConfModalidad();
        $configuraciones = $this->model->getConf();
        $dias_buscar = $configuraciones[0]['dias_buscar'];
        // Verificar si el usuario ya está autenticado
        if (isset($_SESSION['userId'])) {
            // El usuario ya está autenticado, redireccionar a la lista de cursos

            $userId = $_SESSION['userId'];
            $fechaInicioBuscar = $_SESSION['fechaInicioBuscar'];
            $fechaFinBuscar = $_SESSION['fechaFinBuscar'];

            $courses = $this->model->getServicioActividadesIdConsultor($userId, $fechaInicioBuscar, $fechaFinBuscar);
            $usuario = $this->model->getConsultorId($userId);
            // print_r('entre aqui 2');
            $informacionEquipo1 = $this->model->getServicioConsultor($userId);
            // print_r($modalidades);


            // Combinar todos los datos en un solo array
            $data = [
                'cursos' => $courses,
                'usuarioVista' => $usuario,
                'informacionEquipo' => $informacionEquipo1,
                'modalidades' => $modalidades,
                'configuraciones' => $configuraciones,
            ];

            require './views/home.php';
        } else
            // Verificar si se ha enviado el formulario de inicio de sesión
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                // print_r($_POST);
                // Obtener el DNI ingresado por el usuario
                $dni = $_POST['dni'];
                // Realizar la autenticación en tu modelo
                $authenticated = $this->model->authenticateConsultor($dni, $dias_buscar);

                if ($authenticated) {
                    // El usuario se autenticó correctamente, redireccionar a la lista de cursos

                    // El usuario ya está autenticado, redireccionar a la lista de cursos
                    $userId =  $_SESSION['userId'];
                    $fechaInicioBuscar = $_SESSION['fechaInicioBuscar'];
                    $fechaFinBuscar = $_SESSION['fechaFinBuscar'];
                    // print_r($userId);

                    $courses = $this->model->getServicioActividadesIdConsultor($userId, $fechaInicioBuscar, $fechaFinBuscar);
                    // print_r('entre aqui 1');
                    $informacionEquipo1 = $this->model->getServicioConsultor($userId);
                    // print_r($informacionEquipo1);
                    $usuario = $this->model->getConsultorId($userId);

                    // Combinar todos los datos en un solo array
                    $data = [
                        'cursos' => $courses,
                        'usuarioVista' => $usuario,
                        'informacionEquipo' => $informacionEquipo1,
                        'modalidades' => $modalidades,
                        'configuraciones' => $configuraciones,
                    ];

                    // Pasar los cursos a la vista
                    require './views/home.php';
                } else {
                    // Autenticación fallida, mostrar un mensaje de error en la vista de inicio de sesión
                    $error = "Autenticación fallida. Por favor, verifica tu DNI.";
                    require './views/login.php';
                }
            } else {
                // Si no se ha enviado el formulario, mostrar la vista de inicio de sesión
                require './views/login.php';
                session_destroy();
            }
    }
}
