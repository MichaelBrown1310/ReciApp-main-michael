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
  <link rel="stylesheet" href="css/index.css">
  <title>Registrarse</title>
</head>
<main>
    <body>
        <section>
            <div class="form-box">
            <div class="contenedor__todo">
                <div class="form-value">
                <div class="contenedor__login-register">
                    <form action="php/registro_usuario_be.php" class="formulario__register" method="POST">
                        <h2>Registrarse</h2>
                        <div class="inputbox">
                            <ion-icon name="text-outline"></ion-icon>
                            <input type="text" required name="nombre">
                            <label for="">Nombre</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="text-outline"></ion-icon>
                            <input type="text" required name="apellido_1">
                            <label for="">Primer apellido</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="text-outline"></ion-icon>
                            <input type="text" required name="apellido_2">
                            <label for="">Segundo apellido</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="call-outline"></ion-icon>
                            <input type="number" required name="celular">
                            <label for="">Celular</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="document-text-outline"></ion-icon>
                            <input type="number" required name="documento">
                            <label for="">documento</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input type="email" required name="email">
                            <label for="">Correo electronico</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="business-outline"></ion-icon>
                            <input type="number" required name="inmueble"  min="1" max="40">
                            <label for="">Numero de apartamento</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input type="password" required name="clave">
                            <label for="">Contraseña</label>
                        </div>
                        <div class="select">
                            <select  name="tipo_usuario" id="tipo_usuario" name="tipo_usuario">
                                <option value=1>Residente</option>
                                <option value=2>Visitante</option>
                                <option value=3>Funcionario</option>
                            </select>
                            
                        </div>
                        <div class="forget">
                            <label for=""><input type="checkbox" name="encargado" value=1 default=0>  ¿Es el encargado del inmueble?</label>
                        
                        </div>
                        <button>Registrarse</button>
                        <div class="register">
                            <p>Ya tengo una cuenta <a href="iniciar_usuario.php">Iniciar sesion</a></p>
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