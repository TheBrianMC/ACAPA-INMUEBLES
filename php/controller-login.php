<?php
    $correo = $_POST['mail-user'];
    $contrasena = $_POST['password-user'];

    $enlace = mysqli_connect("localhost", "root", "", "acapa-inmueblesv-2");

    $consulta = "SELECT * FROM usuario WHERE mail_user = '$correo' AND status = 1";
    $resultado = mysqli_query($enlace, $consulta);

    if ($resultado) {
        $usuario = mysqli_fetch_assoc($resultado);
        if ($usuario) {
            if (password_verify($contrasena, $usuario['password_user'])) {
                echo "¡Inicio de sesión exitoso!";
                header('Location: /acapa-inmuebles/home.html');
            } else {
                header('Location: /acapa-inmuebles/php/error.php?error=1');
            }
        } else {
            header('Location: /acapa-inmuebles/php/error.php?error=1');
        }
    } else {
        echo "¡Ups hubo un error al consultar los Datos!";
    }

    mysqli_close($enlace);
?>
