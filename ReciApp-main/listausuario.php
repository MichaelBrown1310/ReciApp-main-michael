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
$sql = "SELECT * FROM usuarios WHERE nombre LIKE '%$search%' OR apellido_1 LIKE '%$search%'  OR apellido_2 LIKE '%$search%'  OR usuario_id LIKE '%$search%'";
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
    echo "<tr style='position: sticky; top: 0; background-color: rgba(0, 0, 0, 0.7);'><th>ID</th><th>documento</th><th>Nombre</th><th>Apellido</th><th>Apellido</th><th>Telefono</th><th>Correo electronico</th></tr>";

    // Imprimir datos de la tabla
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["usuario_id"] . "</td><td>" . $row["documento"] . "</td><td>" . $row["nombre"] . "</td><td>" . $row["apellido_1"] . "</td><td>" . $row["apellido_2"] . "</td><td>" . $row["celular"] . "</td><td>" . $row["email"] . "</td></tr>";
    }

    // Cerrar la etiqueta de la tabla
    echo "</table>";
    echo "</div>";
} else {
    echo "0 resultados encontrados";
}
echo "</div>";
echo "</div>";
echo' <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>';
// Cerrar la conexión a la base de datos
$conn->close();

?>