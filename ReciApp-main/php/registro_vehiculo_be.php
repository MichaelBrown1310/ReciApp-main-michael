<?php
include 'conexion_be.php';
session_start();

// Recuperar datos del formulario
$documento_usuario = $_POST['documento_usuario'];
$placa = $_POST['placa'];
$tipo_vehiculo_id = $_POST['tipo_vehiculo'];
$color_vehiculo_id = $_POST['color_vehiculo'];

// Buscar usuario por documento
$buscar_usuario = mysqli_query($conexion, "SELECT usuario_id FROM usuarios WHERE documento = '$documento_usuario'");

if ($buscar_usuario && mysqli_num_rows($buscar_usuario) > 0) {
    $usuario = mysqli_fetch_assoc($buscar_usuario);
    $usuario_id = $usuario['usuario_id'];

    // Insertar vehículo con el usuario_id correspondiente
    $query = "INSERT INTO vehiculos (usuario_id, placa, tipo_vehiculo_id, color_vehiculo_id)
              VALUES ('$usuario_id', '$placa', '$tipo_vehiculo_id', '$color_vehiculo_id')";

    $ejecutar = mysqli_query($conexion, $query);

    if ($ejecutar) {
        echo '
        <script>
            alert("Vehículo registrado exitosamente");
            window.location = "../iniciar_usuario.php";
        </script>
        ';
    } else {
        echo '
        <script>
            alert("Inténtalo de nuevo, vehículo no registrado");
            window.location = "../registrar_vehiculo.php";
        </script>
        ';
    }
} else {
    // No se encontró un usuario con el documento proporcionado
    echo '
    <script>
        alert("No se encontró un usuario con el documento proporcionado");
        window.location = "../registrovehiculo.php";
    </script>
    ';
}

mysqli_close($conexion);
?>
