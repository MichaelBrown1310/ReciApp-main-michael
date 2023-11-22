<?php
 session_start();
 if(isset($_SESSION['usuario'])){
     header("location: bienvenida.php");
 }   

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/iniciar_css.css">
  <title>Iniciar Sesion</title>
</head>
<main>
    <body>
        <section>
            <div class="form-box">
            <div class="contenedor__todo">
                <div class="form-value">
                <div class="contenedor__login-register">
                    <form action="php/login_usuario_be.php" class="formulario__login" method="POST">
                        <div>
                            <h2>Iniciar sesion</h2>
                            <div class="inputbox">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input type="number" required name="documento">
                            <label for="">Documento</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input type="password" required name="clave">
                            <label for="">Contraseña</label>
                        </div>
                        <button>Iniciar sesion</button>
                        <div class="register">
                            <p>No tengo una cuenta. <a href="registrar_usuario.php"> Registrarse</a></p>
                        </div>
                    </form>
                </div>
                </div>
            </div>  
            </div>
        </section>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </main>
    <script src="js/script.js"></script>
</body>
</html>