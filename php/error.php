<!-- Prueba -->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300&display=swap" rel="stylesheet">
    <title>Prueba</title>
    <link rel="icon" href="/acapa-inmuebles/assets/icons/ACAPA_IMB_LOGO">
    <link rel="stylesheet" href="/acapa-inmuebles/Styles/styles.css">
    <style>
        #mail_login {
            border-right: solid 5px red;
        }
        #mail_login:focus {
            border-right: solid 5px #7ED957;
        }
        #password_login {
            border-right: solid 5px red;
        }
        #password_login:focus {
            border-right: solid 5px #7ED957;
        }
    </style>
    
   
</head>
<body>
    <!-- Header: Cabeza del contenido-->
    <div class="message-error" id="error_message" style="height: 40px;"><p style="height: 100%; position: absolute; left: 50%; transform: translate(-50%, 0%);">¡CONTRASEÑA O USUARIO INCORRECTO! :(</p></div>
    <!-- <div class="message-error">ERROR</div> -->


    <header>
        <img src="/acapa-inmuebles/assets/icons/User_Icon.png" alt="icono de usuario" id="user_icon">
        <form class="container-login" onsubmit="validateForm(event)" action="/acapa-inmuebles/php/controller-login.php" method="post">
            <div class="container--login">
                <!-- <h1>Iniciar Sesion</h1> -->
                <div class="container_img_1">
                    <img src="/acapa-inmuebles/assets/icons/user_icon_login.png" alt="logo de usuario inicio de sesion" id="user_icon_login">
                </div>
                <div class="container_img_2">
                    <img src="/acapa-inmuebles/assets/icons/Padlock_icon.png" alt="logo de usuario inicio de sesion" id="user_icon_login">
                </div>
                
                <!-- <p>Correo o Usuario</p> -->
                <img src="" alt="">
                <div id="container-mail_login">
                    <label for="user-mail" > 
                        <input type="text" name="mail-user" id="mail_login" placeholder="Digite su Correo...">
                    </label>
                </div>
               
                <!-- <p>Password</p> -->
                <div id="container-password_login">
                    <label for="user-password">
                        <input type="password" name="password-user" id="password_login" placeholder="Escriba Su Contraseña Aqui">
                    </label>
                </div>

                <div class="container_check_text">
                    <label for="check_text">
                        <input id="checking_text" type="checkbox">Mantener Iniciado
                    </label>
                </div>

                <div class="container-restore-password">
                    <a href="#" target="_blank">¿Restablecer Contraseña?</a>
                </div>

                

                <div class="container_button">
                    <button type="submit"><p>INGRESAR</p></button>
                </div>
            </div>
        </Form>
    </header> 

    <div class="container-register">
        <div class="register-area">
            <p>REGISTRARSE</p>
        </div>
        
        <div class="container_logos">
            <div class="facebook_icon">
                <img src="/acapa-inmuebles/assets/icons/Facebook_icon.png" alt="icono facebook" height="54.7">
            </div>
    
            <div class="google_icon">
                <img src="/acapa-inmuebles/assets/icons/Google_icon.png" alt="icono de google" height="54.7">
            </div>
    
            <div class="twitter_icon">
                <img src="/acapa-inmuebles/assets/icons/Twitter_icon.png" alt="icono de x" height="54.7">
            </div>
    
            <div class="formulario_icon">
                <a href="/acapa-inmuebles/register.html"><img src="/acapa-inmuebles/assets/icons/Formulario_icon.png" alt="formulario icono" height="54.7"></a>
            </div>
        </div>
        
    </div>
    <script>
        function validateForm(e) {
            var mail = document.getElementById('mail_login');
            var password = document.getElementById('password_login');

            if(mail.value === "" || password.value === "") {
                e.preventDefault();
                var errorMessage = document.getElementById('error_message');
                errorMessage.style.display = 'block';
                errorMessage.innerText = '¡POR FAVOR, RELLENE TODOS LOS CAMPOS REQUERIDOS! :D';
                errorMessage.style.animation = 'slideDown 0.5s ease-out';

                if(mail.value === "") {
                    mail.style.borderRight = "solid 5px red";
                }
                if(password.value === "") {
                    password.style.borderRight = "solid 5px red";
                }

                errorMessage.addEventListener('animationend', function() {
                    setTimeout(function() {
                        errorMessage.style.animation = 'slideUp 0.5s ease-out forwards';
                    }, 3000);
                });
            }
        }

        document.querySelector('.form-container').addEventListener('submit', validateForm);


        window.onload = function() {
            var mailInput = document.getElementById('mail_login');
            var passwordInput = document.getElementById('password_login');

            mailInput.addEventListener('blur', function() {
                if(mailInput.value === "") {
                    mailInput.style.borderRight = "solid 5px red";
                } else {
                    mailInput.style.borderRight = "solid 5px #7ED957";
                }
            });

            passwordInput.addEventListener('blur', function() {
                if(passwordInput.value === "") {
                    passwordInput.style.borderRight = "solid 5px red";
                } else {
                    passwordInput.style.borderRight = "solid 5px #7ED957";
                }
            });

        
        }

    </script>
    
    
    
    
</body>
</html>