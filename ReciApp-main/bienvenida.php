<?php
    session_start();
    if(!isset($_SESSION['usuario'])){
        echo'
            <script>
                alert("Por favor debes iniciar sesion");
                window.location ="iniciar_usuario.php";
            </script>
        ';
        //header("location: iniciar_usuario.php");
        session_destroy();
        die();
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de control</title>
    <link href="https://cdn.lineicons.com/3.0/lineicons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<style>
        /* Agrega estilos personalizados aquí */
        *{
            margin: 0;
            padding: 0;
            font-family: 'poppins',sans-serif;
        }
</style>
<body>

    <main>
    
        <h1>Panel de control</h1>

        <div class="container__box">
            <div class="box" onclick="redirigirAentradaPHP()">
                <i class="lni lni-apartment"></i>
                <h5>Registros de entradas</h5>
                <h4>Registros entradas</h4>
            </div>
            <script>
                function redirigirAentradaPHP() {
                 window.location.href = 'registroentrada.php';
                 }
            </script>

            <div class="box" onclick="redirigirAsalidaPHP()">
                <i class="lni lni-exit"></i>
                <h5>Registros de salidas</h5>
                <h4>Registros Salidas</h4>
            </div>
            <script>
                function redirigirAsalidaPHP() {
                 window.location.href = 'registrosalida.php';
                 }
            </script>

            <div class="box" onclick="redirigirAlistaPHP()">
                <i class="lni lni-users"></i>
                <h5>Lista de usuarios</h5>
                <h4>Lista Usuarios</h4>
            </div>
            <script>
                function redirigirAlistaPHP() {
                 window.location.href = 'listaresidentes.php';
                 }
            </script>

            <div class="box" onclick="redirigirAvehiculoPHP()">
                <i class="lni lni-car-alt"></i>
                <h5>Registrar su vehiculo</h5>
                <h4>Registra Vehiculo</h4>
            </div>
            <script>
                function redirigirAvehiculoPHP() {
                 window.location.href = 'registrovehiculo.php';
                 }
            </script>

            <div class="box" onclick="redirigirAcerrarPHP()">
                <i class="lni lni-close"></i>
                <h5>Cerrar sesion</h5>
                <h4>Cerrar sesion</h4>
            </div>
            <script>
                function redirigirAcerrarPHP() {
                 window.location.href = 'php/cerrar_sesion.php';
                 }
            </script>           
        </div>

    </main>
    
</body>
</html>