<?php
// Incluir el archivo de conexión solo si está disponible
if (file_exists('conexion_be.php')) {
    include 'conexion_be.php';

    // Realizar la consulta SQL
    $sql = "SELECT e.entrada_id, e.usuaro_id, e.funcionario_id, e.fecha, e.hora, u.nombre, u.apellido_1, u.apellido_2, u.celular, u.documento, u.email, u.tipo_usuario
        FROM entradas e
        JOIN usuarios u ON e.usuaro_id = u.usuario_id
        ORDER BY e.fecha DESC, e.hora DESC";

    // Verificar si la conexión se estableció correctamente
    if ($conexion) {
        $resultado = mysqli_query($conexion, $sql);

        if ($resultado) {
            // Mostrar la tabla con los resultados
            echo '<table border="1">';
            echo '<tr><th>Entrada ID</th><th>Nombre</th><th>Fecha</th><th>Hora</th><th>Tipo de Usuario</th></tr>';

            while ($fila = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';
                echo '<td>' . $fila['entrada_id'] . '</td>';
                echo '<td>' . $fila['nombre'] . ' ' . $fila['apellido_1'] . ' ' . $fila['apellido_2'] . '</td>';
                echo '<td>' . $fila['fecha'] . '</td>';
                echo '<td>' . $fila['hora'] . '</td>';
                echo '<td>' . $fila['tipo_usuario'] . '</td>';
                echo '</tr>';
            }

            echo '</table>';
        } else {
            // Manejar el error si la consulta no fue exitosa
            echo 'Error al ejecutar la consulta: ' . mysqli_error($conexion);
        }

        mysqli_close($conexion);
    } else {
        // Manejar el error si la conexión no se estableció correctamente
        echo 'Error en la conexión a la base de datos.';
    }
} else {
    // Manejar el error si el archivo de conexión no existe
    echo 'Error: El archivo de conexión no existe.';
}
?>
