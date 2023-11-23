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
    <?php
    // Suponiendo que ya tienes una conexión a la base de datos establecida
    include 'php/conexion_be.php';
    // Hacer la consulta a la base de datos
    $cedula = $_SESSION['usuario']; // Cédula a buscar
    $query = "SELECT * FROM usuarios WHERE documento = $cedula";
    $result = mysqli_query($conexion, $query);
    $row = mysqli_fetch_assoc($result);

    echo '<style>
    h2{
        
        text-align: center;
        font-size: 30px;
        color: transparent;
        background-color: #b3b3b3;
        text-shadow: 2px 2px 5px rgba(255, 255, 255, 0.4);
        -webkit-background-clip: text;
           -moz-background-clip: text;
                background-clip: text;
    }</style>
    <h1>Panel de control</h1>
    <h2 name="saludo">Bienvenid@ '. $row["nombre"] .'' . $row["apellido_1"] .'</h2>';
    ?>
    
        


        <div class="container__box">
            

            <?php
            $query = "SELECT * FROM usuarios WHERE documento = $cedula";
            $result = mysqli_query($conexion, $query);
            // Verificar si se obtuvieron resultados y si el tipo de usuario es 4
            if ($result) {
                $usuario = mysqli_fetch_assoc($result);
                if ($usuario['tipo_usuario'] == 4) {
                    // Mostrar el código HTML si la condición es verdadera
                    echo '<div class="box" onclick="redirigirAbasededatos()">
                            <i class="lni lni-database"></i>
                            <h5>Lista deUsuarios</h5>
                            <h4>Lista deUsuario</h4>
                        </div>';
                    echo '<div class="box" onclick="redirigirListaVehiculos()">
                        <i class="lni lni-car"></i>
                        <h5>Lista de Vehiculos</h5>
                        <h4>Lista de Vehiculos</h4>
                    </div>
                    <script>
                        function redirigirListaVehiculos() {
                         window.location.href = "lista_vehiculos.php";
                         }
                    </script>';
                }else{
                    echo '<div class="box" onclick="redirigirAentradaPHP()">
                    <i class="lni lni-apartment"></i>
                    <h5>Registros de entradas</h5>
                    <h4>Registros entradas</h4>
                </div>
                <script>
                    function redirigirAentradaPHP() {
                     window.location.href = "registroentrada.php";
                     }
                </script>
    
                <div class="box" onclick="redirigirAsalidaPHP()">
                    <i class="lni lni-exit"></i>
                    <h5>Registros de salidas</h5>
                    <h4>Registros Salidas</h4>
                </div>
                <script>
                    function redirigirAsalidaPHP() {
                     window.location.href = "registrosalida.php";
                     }
                </script>
    
                <div class="box" onclick="redirigirAlistaPHP()">
                    <i class="lni lni-users"></i>
                    <h5>Lista de usuarios</h5>
                    <h4>Lista Usuarios</h4>
                </div>
                <script>
                    function redirigirAlistaPHP() {
                     window.location.href = "listaresidentes.php";
                     }
                </script>
    
                <div class="box" onclick="redirigirAvehiculoPHP()">
                    <i class="lni lni-car-alt"></i>
                    <h5>Registrar su vehiculo</h5>
                    <h4>Registra Vehiculo</h4>
                </div>
                <script>
                    function redirigirAvehiculoPHP() {
                     window.location.href = "registrovehiculo.php";
                     }
                </script>
    
                <div class="box" onclick="redirigirAlistavehiculoPHP()">
                    <i class="lni lni-car-alt"></i>
                    <h5>Lista de sus vehiculos</h5>
                    <h4>Lista Vehiculos</h4>
                </div>';

                }
            }

            // Cerrar la conexión a la base de datos
            mysqli_close($conexion);
            ?>

            <script>
                function redirigirAlistavehiculoPHP() {
                 window.location.href = 'listarvehiculos.php';
                 }
            </script>

            <script>
                function redirigirAbasededatos() {
                 window.location.href = 'listausuario.php';
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