<?php

require dirname(__DIR__) . "/connection/DatabaseConnection.php";
require dirname(__DIR__) . "/models/ReportHoursModel.php";

$dbConnection = DatabaseConnection::getInstance();
$reportHoursModel = new ReportHoursModel($dbConnection);
$users = $reportHoursModel->getConsultor();

function obtenerAlerta($condicion) {
    global $reportHoursModel;

    if ($condicion >= 1 && $condicion <= 4) {
        return $reportHoursModel->getAlertas($condicion);
    }
}

function enviarCorreoRecordatorio($to, $subject, $message , $userNombre) {
    $headers = 'From: ' . $subject['remite_alertas'] . "\r\n" .
        'Reply-To: ' . $subject['remite_alertas'] . "\r\n" .
        'X-Mailer: PHP/' . phpversion();
        $alerta1 = 'Servicio - ' . $subject['correo_asunto_prefijo'] . ' ' . $subject['asunto_alertas'] . ' ' . $userNombre;
        $message = $subject['cuerpo_alertas'];

    if (mail($to, $alerta1, $message, $headers)) {
        return true; // Email sent successfully
    } else {
        return false; // Email sending failed
    }
}



foreach ($users as $user) {
    $userNombre = $user['nombres'];
    $userCorreoP = $user['correo_personal'];
    $userFechaIni = new DateTime($user['fecha_inicio']);
    $formattedFechaIni = $userFechaIni->format('Y-m-d');

    $recipients = array(
        $userCorreoP => $formattedFechaIni
    );

    foreach ($recipients as $to => $fechaUltimoRegistro) {
        $fechaUltimoRegistro = new DateTime($fechaUltimoRegistro);
        $diasTranscurridos = (new DateTime())->diff($fechaUltimoRegistro)->days;

        // Primera Alerta
        if ($diasTranscurridos > obtenerAlerta(1)['condicion_alertas']) {
            $alerta = obtenerAlerta(1);
           
            if (enviarCorreoRecordatorio($to, $alerta, $message,$userNombre)) {
                echo "Correo de recordatorio para $to enviado con éxito!<br>";
            } else {
                echo "El correo para $to no pudo ser enviado.<br>";
            }
        } else {
            echo "No es necesario enviar el recordatorio a $to en este momento.<br>";
        }

        // Segunda Alerta
        if ((int)date('j') === (int)obtenerAlerta(2)['condicion_alertas']) {
            $alerta = obtenerAlerta(2);
            $message = $alerta['cuerpo_alertas'] . ' ' . $userNombre;
            if (enviarCorreoRecordatorio($userCorreoP, $alerta, $message,$userNombre)) {
                echo "Correo de recordatorio para $userCorreoP enviado con éxito!<br>";
            } else {
                echo "El correo para $userCorreoP no pudo ser enviado.<br>";
            }
        }

        // Tercera Alerta
        if (strtolower(date('l')) == strtolower(obtenerAlerta(3)['condicion_alertas'])) {
            $alerta = obtenerAlerta(3);
            $message = $alerta['cuerpo_alertas'] . ' ' . $userNombre;
            if (enviarCorreoRecordatorio($userCorreoP, $alerta, $message,$userNombre)) {
                echo "Correo de recordatorio para $userCorreoP enviado con éxito!<br>";
            } else {
                echo "El correo para $userCorreoP no pudo ser enviado.<br>";
            }
        }

        // Cuarta Alerta
        //$fechaActual = new DateTime('2024-02-26');        
        $fechaActual = new DateTime;

        $ultimoDiaDelMes = new DateTime("last day of " . $fechaActual->format('Y-m'));
        $diasFaltantes = $fechaActual->diff($ultimoDiaDelMes)->days;

        if ($diasFaltantes === 3) {
            $alerta = obtenerAlerta(4);
            $message = $alerta['cuerpo_alertas'] . ' ' . $userNombre;
            if (enviarCorreoRecordatorio($userCorreoP, $alerta, $message,$userNombre)) {
                echo "Correo de recordatorio para $userCorreoP enviado con éxito!<br>";
            } else {
                echo "El correo para $userCorreoP no pudo ser enviado.<br>";
            }
        }
    }
}
?>
