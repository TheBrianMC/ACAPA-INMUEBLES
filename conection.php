<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
</head>
<body>
    <?php
    
    $nombre_apellido = $_POST["name_user"];
    $partes = explode(" ", $nombre_apellido);
    $nombre = $partes[0];
    $apellido = $partes[1];
    
    $correo = $_POST["mail_user"];
    $cedula = $_POST["cedula_user"];
    $phone = $_POST["phone_user"];
    $cumpleaños = $_POST["birthday_user"];
    $payment = $_POST["payment_user"];
    $contrasena1 = $_POST["password_user"];
    $contrasena2 = $_POST["password_user_check"];

    if ($contrasena1 == $contrasena2) {

        if ($contrasena1 > 9999999) {

            $enlace = mysqli_connect("localhost", "root", "", "acapa-inmueblesv-2");

            $contrasena_encripted = password_hash($contrasena1, PASSWORD_DEFAULT);

            $consulta = "INSERT INTO usuario (user_id, name_user, last_name_user, cedula_user, birthdate_user, adress_user, mail_user, password_user, role_user, phone_user, transactions, payment_method, status) VALUES ('', '$nombre', '$apellido', '$cedula', '$cumpleaños', '¡No hay Direccion!', '$correo', '$contrasena_encripted', 'Usuario', '$phone', '0', '0', '1')";

            $resultado = mysqli_query($enlace, $consulta);

            if ($resultado) {
                // echo "¡Los Datos se Agregaron Correctamente!";
                header('Location: /acapa-inmuebles/index.php');
            } else {
                echo "¡Ups hubo un error al agregar los Datos!";
            }

            mysqli_close($enlace);


        } else {
            echo "La Contraseña debe ser mayor a 7 digitos";
        }

        

    } else {

        echo "Las Contraseñas no Coinciden";

    }

    ?>
</body>
</html>