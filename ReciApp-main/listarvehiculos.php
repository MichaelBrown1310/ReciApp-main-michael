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
<html>
    <body>
        

    <link href='https://cdn.lineicons.com/3.0/lineicons.css' rel='stylesheet'>
    <link rel='stylesheet' href='css/estilovehiculo.css'>
    <style>
        *{
            margin: 0;
            padding: 0;
            font-family: 'poppins',sans-serif;
        }
        body {
            margin: 0;
            padding: 0;
        }

        .box {
            position: fixed;
            top: 3%;
            left: 2%;
            z-index: 999; /* Asegura que el botón esté en la parte superior */
        }

        .box i {
            cursor: pointer;
        }

        body {
            background-image: url('background6.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: 'Arial', sans-serif;
            color: white; /* Color de texto blanco */
            animation: animatedBg 10s infinite;
            overflow: hidden;
            height: 1%;
            width: 100%;
        }

        @keyframes animatedBg {
            100% {
                filter: hue-rotate(360deg);
            }
        }


    </style>

    <div class="box" class="atras" onclick="redirigirApanelPHP()">
        <i class="lni lni-exit" ></i>
    </div>
    <script>
        function redirigirApanelPHP() {
            window.location.href = 'bienvenida.php';
        }
        </script>

</html>
<?php

// Configuración de la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bases";
$cedula = $_SESSION['usuario'];
// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

#$sql = "SELECT * FROM usuarios WHERE nombre LIKE '%$search%' OR apellido_1 LIKE '%$search%'  OR apellido_2 LIKE '%$search%'  OR usuario_id LIKE '%$search%'";
$sql = "SELECT usuarios.*
FROM usuarios
JOIN residentes ON usuarios.documento = residentes.documento
WHERE residentes.inmueble_id = (SELECT inmueble_id FROM residentes WHERE documento = $cedula);";


$result = $conn->query($sql);

echo '<head><link rel="stylesheet" href="https://cdn.lineicons.com/2.0/LineIcons.css"></head>';

echo "<style>
.box{
    width: 40px;
    height: 40px;
    background: transparent;
    margin-top: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    cursor: pointer;
    transition: all 300ms ease;
    position: relative;
    backdrop-filter: blur(5px);
    border: 2px solid rgba(255,255,255,0.5);
    left: 90%;
}

.box:hover{
    transform: scale(1.1);
    box-shadow: 0px 0px 30px -15px rgba(0,0,0,0.5);
    background: #e900801f;
    z-index: 1;
    border-radius: 20px;
    
}

.box i{
    font-size: 30px;
    color: rgb(248, 204, 215);
}

.box:hover i{
    color: #ffffff;
}


}


</style>";

echo "<div class='box' onclick='redirigirApanelPHP()'>
        <i class='lni lni-exit'></i>
      </div>";

echo "<script>
    function redirigirApanelPHP() {
        window.location.href = 'bienvenida.php';
    }
</script>";

echo "<style>
    body {
        background-image: url('background6.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        margin: 0;
        padding: 0;
        font-family: 'Arial', sans-serif;
        color: white; /* Color de texto blanco */
        animation: animatedBg 10s infinite; 
        overflow: hidden;
    }
    @keyframes animatedBg {
        100% {
            filter:huerotate(360deg);
        }
    }

    table {
        width: 50%;
        position: absolute;
        border-collapse: collapse;
        margin: 0 auto; /* Centrar la tabla */
        backdrop-filter: blur(2px);
        background-color: rgb(0, 0, 0, 0.);
        top: 5%;
        left: 25%;
    }

    table::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-size: cover;
        background-repeat: no-repeat;
        filter: blur(5px); /* Ajusta el valor de blur según tus preferencias */
        z-index: -1;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: left;
        position: relative;
        z-index: 1;
    }

    th {
        background-color: rgba(0, 0, 0, 0.7); /* Fondo translúcido */
        
    }

    form {
        margin-bottom: 20px;
        background-color: rgba(0, 0, 0, 0.4); /* Fondo blanco translúcido */
        
        padding: 10px;
        border-radius: 10px; /* Bordes redondeados */
        text-align: center;
    }

    label {
        font-weight: bold;
        color: white; /* Color de texto blanco */
    }

    input[type=text] {
        
        padding: 5px;
        background: transparent;
        color: white;
        
    }

    input[type=submit] {
        padding: 5px 10px;
        background-color: rgb(13, 9, 62, 0.3);
        color: white;
        border: none;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: rgb(49, 35, 141, 0.4);
    }
</style>";

// Configuración de la conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bases";
$cedula = $_SESSION['usuario'];
// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

$sql = "SELECT usuarios.*, vehiculos.placa
FROM usuarios
LEFT JOIN vehiculos ON usuarios.usuario_id = vehiculos.usuario_id
WHERE usuarios.documento = $cedula;";

$result = $conn->query($sql);

echo "<style>
    // ... (el estilo sigue igual)
</style>";

echo "<div style='max-height: 1000px; overflow: auto;'>";
// Verificar si hay resultados
if ($result->num_rows > 0) {
    // Imprimir formulario de búsqueda
    echo "<form method='get' action='listausuario.php' style='position: fixed; top: 0; left: 10%; transform: translateX(-50%); background-color: rgba(0, 0, 0, 0.4); padding: 10px; border-radius: 10px; text-align: center;'></form>";

    // Contenedor para la tabla
    echo "<div style='margin-top: 50px;'>";
    // Imprimir encabezados de la tabla
    echo "<table border='1' style='width: 1000px;'>";
    echo "<tr style='position: sticky; top: 0; background-color: rgba(0, 0, 0, 0.7);'><th>ID</th><th>Nombre</th><th>Apellido</th><th>Apellido</th><th>Placa</th></tr>";

    // Imprimir datos de la tabla
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["usuario_id"] . "</td><td>" . $row["nombre"] . "</td><td>" . $row["apellido_1"] . "</td><td>" . $row["apellido_2"] . "</td><td>" . $row["placa"] . "</td></tr>";
    }

    // Cerrar la etiqueta de la tabla
    echo "</table>";
    echo "</div></body>";
} else {
    echo "0 resultados encontrados";
}
echo "</div>";
echo "</div>";

// Cerrar la conexión a la base de datos
$conn->close();

?>
