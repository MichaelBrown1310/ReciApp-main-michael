<?php

    include 'conexion_be.php';

    $nombre = $_POST['nombre'];
    $apellido_1 = $_POST['apellido_1'];
    $apellido_2 = $_POST['apellido_2'];
    $celular = $_POST['celular'];
    $documento = $_POST['documento'];
    $email = $_POST['email'];
    $tipo_usuario = $_POST['tipo_usuario'];
    $inmueble = $_POST['inmueble'];
    $encargado = $_POST['encargado'];

    //Encriptar
    $clave = $_POST['clave'];
    $clave_encriptada = hash('sha512', $clave);

    $query = "INSERT INTO usuarios(nombre, apellido_1, apellido_2, celular, documento, email, tipo_usuario, clave)
            VALUES('$nombre', '$apellido_1', '$apellido_2', '$celular', '$documento', '$email', '$tipo_usuario', '$clave_encriptada')";

    $query2 = "INSERT INTO residentes(inmueble_id, encargado, documento)
            VALUES('$inmueble', '$encargado', '$documento');";

    //verificar que el correo no se repita en la base de datos
    $verificar_correo = mysqli_query($conexion, "SELECT * FROM usuarios WHERE email ='$email' ");
    $verificar_documento = mysqli_query($conexion, "SELECT * FROM usuarios WHERE documento ='$documento' ");


    if(mysqli_num_rows($verificar_correo)> 0){
        echo '
        <script>
            alert("Este correo Ya esta registrado, intenta con otro diferente");
            window.location = "../registrar_usuario.php";
        </script>
        ';
        exit();
    }else if(mysqli_num_rows($verificar_documento) > 0){
        echo '
        <script>
            alert("Este documento Ya esta registrado, intenta con otro diferente");
            window.location = "../registrar_usuario.php";
        </script>
        ';
        exit();
    }

    $ejecutar = mysqli_query($conexion, $query);
    $ejecutar2 = mysqli_query($conexion, $query2);


    if($ejecutar) {
        echo '
        <script>
            alert("Usuario almacenado exitosamente");
            window.location = "../iniciar_usuario.php";
        </script>
        ';
        }else{
        echo '
        <script>
            alert("Inténtalo de nuevo, usuario no almacenado");
            window.location = "../registrar_usuario.php";
        </script>
        ';
    }

    mysqli_close($conexion);
?>