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

// Inicializar la variable de búsqueda
$search = '';

// Verificar si se envió un formulario de búsqueda
if (isset($_GET['buscar'])) {
    $search = $_GET['buscar'];
}

// Consulta SQL para obtener datos de la tabla con filtro de búsqueda
$sql = "SELECT vehiculos.*, usuarios.*
FROM vehiculos
LEFT JOIN usuarios ON vehiculos.usuario_id = usuarios.usuario_id
WHERE vehiculos.usuario_id LIKE '%$search%' OR vehiculos.placa LIKE '%$search%'";
#$sql = "SELECT * FROM residentes WHERE inmueble_id = (SELECT inmueble_id FROM residentes WHERE documento = $cedula);";


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
    color: white;
    animation: animatedBg 10s infinite linear;
    overflow: hidden;
}

table {
    width: 50%;
    border-collapse: collapse;
    margin: 0 auto; /* Centrar la tabla */
    backdrop-filter: blur(5px);
    background-color: rgba(0, 0, 0, 0.);
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
    filter: blur(5px);
    z-index: -1;
    overflow-y: auto;
    max-height: 50vh; /* Limitar la altura de la tabla al 50% de la altura de la ventana */
}

th, td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
    position: block;
    z-index: 1;
    margin-top: 10px;
}

th {
    background-color: rgba(0, 0, 0, 0.9);
}

form {
    margin-bottom: 20px;
    background-color: rgba(0, 0, 0, 0.4);
    padding: 10px;
    border-radius: 10px;
    text-align: center;
    position: fixed;
    top: 0;
    left: 10%;
    transform: translateX(-50%);
}

label {
    font-weight: bold;
    color: white;
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

/* Barra lateral */
div {
    margin-top: 50px;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%; /* Ajustar el ancho de la barra lateral según sea necesario */
    height: 90%;
    background-color: rgba(0, 0, 0, 0.);
    padding: 10px;
    border-radius: 10px;
    text-align: center;
    overflow-y: auto;
}

/* Estilo adicional para la tabla */
table {
    margin-top: 50px;
}

</style>";

echo "<div style='max-height: 1000px; overflow: auto;'>";
// Verificar si hay resultados
if ($result->num_rows > 0) {
    // Imprimir formulario de búsqueda
    echo "<form method='get' action='listausuario.php' style='margin-top:50; position: fixed; top: 0; left: 10%; transform: translateX(-50%); background-color: rgba(0, 0, 0, 0.4); padding: 10px; border-radius: 10px; text-align: center;'>";
    echo "<label>Buscar:</label>";
    echo "<input type='text' name='buscar' value='$search'>";
    echo "<input type='submit' value='Buscar'>";
    echo "</form>";
    // Contenedor para la tabla
    echo "<div style='margin-top: 50px;'>";
    // Imprimir encabezados de la tabla
    echo "<table border='1' style='width: 1000px;'>";
    echo "<tr style='position: sticky; top: 0; background-color: rgba(0, 0, 0, 0.7);'><th>ID</th><th>Dueño</th><th>Placa</th><th>Tipo</th><th>Color</th></tr>";

    // Imprimir datos de la tabla
    while($row = $result->fetch_assoc()) {
        $tipo_vehiculo = "";
        $color_vehiculo = "";
    
        // Traducción del tipo de vehículo
        switch ($row["tipo_vehiculo_id"]) {
            case 1:
                $tipo_vehiculo = "Carro gasolina";
                break;
            case 2:
                $tipo_vehiculo = "Carro electrico";
                break;
            case 3:
                $tipo_vehiculo = "Harro hibrido";
                break;
            case 4:
                $tipo_vehiculo = "Moto";
                break;
            case 5:
                $tipo_vehiculo = "Cuatrimoto";
                break;
            case 6:
                $tipo_vehiculo = "Bicicleta";
                break;
            case 7:
                $tipo_vehiculo = "Scooter";
                break;
            // Agrega más casos según sea necesario
            default:
                // Manejo para otros casos si es necesario
                break;
        }
    
        // Traducción del color del vehículo
        switch ($row["color_vehiculo_id"]) {
            case 1:
                $color_vehiculo = "Blanco";
                break;
            case 2:
                $color_vehiculo = "Negro";
                break;
            case 3:
                $color_vehiculo = "Plateado/Gris";
                break;
            case 4:
                $color_vehiculo = "Azul";
                break;
            case 5:
                $color_vehiculo = "Rojo";
                break;
            case 6:
                $color_vehiculo = "Verde";
                break;
            case 7:
                $color_vehiculo = "Marron";
                break;
            case 8:
                $color_vehiculo = "Beige";
                break;
            case 9:
                $color_vehiculo = "Amarillo";
                break;
            case 10:
                $color_vehiculo = "Naranja";
                break;
            case 11:
                $color_vehiculo = "Dorado";
                break;
            case 12:
                $color_vehiculo = "Bronce";
                break;
            case 13:
                $color_vehiculo = "Morado";
                break;
            case 14:
                $color_vehiculo = "Rosa";
                break;
            case 15:
                $color_vehiculo = "Turquesa";
                break;
            // Agrega más casos según sea necesario
            default:
                // Manejo para otros casos si es necesario
                break;
        }
    
        echo "<tr><td>" . $row["usuario_id"] . "</td><td>" . $row["nombre"] . "</td><td>" . $row["placa"] . "</td><td>" . $tipo_vehiculo . "</td><td>" . $color_vehiculo . "</td></tr>";
    }

    // Cerrar la etiqueta de la tabla
    echo "</table>";
    echo "</div>";
} else {
    echo "0 resultados encontrados";
}
echo "</div>";
echo "</div>";
// Cerrar la conexión a la base de datos
$conn->close();

?>