<?php
    session_start();

    include 'conexion_be.php';
    
    $documento = $_POST['documento'];
    $clave = $_POST['clave'];
    $clave_encriptada = hash('sha512', $clave);

    $validar_login = mysqli_query($conexion, "SELECT * FROM usuarios WHERE documento='$documento' and clave='$clave_encriptada'");

    if(mysqli_num_rows($validar_login) > 0) {
        $_SESSION['usuario'] = $documento;
        header("location: ../bienvenida.php");
        exit;
    }else{
        echo'
        <script>
            alert("Usuario no existe, por favor verifique los datos introducidos");
            window.location = "../iniciar_usuario.php";
        </script>
        ';
        exit;
        }
?>