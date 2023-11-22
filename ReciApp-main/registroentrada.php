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
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/entradas_css.css">
    <title>Historial de entradas</title>
    <link href="https://cdn.lineicons.com/3.0/lineicons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilovehiculo.css">
    
    <style>
        /* Agrega estilos personalizados aquí */
        *{
            margin: 0;
            padding: 0;
            font-family: 'poppins',sans-serif;
        }
        .box{
            top:-44%;
            left: 80%;
        }
        table {
            
            border-collapse: collapse;
            margin-top: 120px;
            border:0;
            
            
        }
        .filas{
            text-align: left;
        }
        .filas2{
            text-align: right;
        }
        .lineas{
            border:0;
            border-bottom: 2px solid rgba(255,255,255,0.5);
        }
        th, td {
            border:0;/* Elimina el borde */
            padding: 10px;
            color: white; /* Hace que el texto sea blanco */
            
        }
        .container__box{
            margin: 0;
            width: -10%;
            
        }
    </style>
</head>
    <main>
        <section>
            <div class="form-box">
                <div class="box" class="atras" onclick="redirigirApanelPHP()">
                    <i class="lni lni-exit" ></i>
                </div>
                    <script>
                        function redirigirApanelPHP() {
                            window.location.href = 'bienvenida.php';
                        }
                    </script>
                <div class="contenedor__todo">
                    <div class="form-value">
                        <div class="contenedor__login-register">
                            <form action="php/registro_entrada_be.php">
                                <h2>Historial de entradas</h2>
                                <!-- Pega aquí el código PHP de registro_entrada_be.php -->
                                
                                <?php
                                    
                                    // Incluir el archivo de conexión solo si está disponible
                                    if (file_exists('php/conexion_be.php')) {
                                        include 'php/conexion_be.php';
                                        $cedula = $_SESSION['usuario'];
                                        // Realizar la consulta SQL
                                        $sql = "SELECT e.usuaro_id, u.nombre, u.tipo_usuario, u.apellido_1, u.apellido_2, e.fecha, e.hora FROM entradas e JOIN usuarios u ON e.usuaro_id = u.usuario_id WHERE u.documento = $cedula
                                       ORDER BY e.fecha DESC, e.hora DESC;";
                                    
                                        // Verificar si la conexión se estableció correctamente
                                        if ($conexion) {
                                            $resultado = mysqli_query($conexion, $sql);
                                    
                                            if ($resultado) {
                                                // Mostrar la tabla con los resultados
                                                echo '<table border="1" > ';
                                                
                                                while ($fila = mysqli_fetch_assoc($resultado)) {
                                                    if ($fila['tipo_usuario'] == 1) {
                                                        $fila['tipo_usuario']="Residente";
                                                } elseif ($fila['tipo_usuario'] == 2) {
                                                    echo $fila['tipo_usuario']="Visitante";
                                                } elseif ($fila['tipo_usuario'] == 3) {
                                                    echo $fila['tipo_usuario']="Funcionario";
                                                } else {
                                                    // Puedes manejar un caso por defecto o lanzar un error si es necesario
                                                    echo "Tipo de usuario desconocido";
                                                }
                                                echo '<tr >';
                                                echo '<td class="filas">' . $fila['nombre'] . ' ' . $fila['apellido_1'] . ' ' . $fila['apellido_2'] . '</td><td class="filas2">' . $fila['fecha'] . '</td>';
                                                echo '</tr>';
                                                
                                                echo '<tr class="lineas">';
                                                echo '<td class="filas">' . $fila['tipo_usuario'] . '</td><td class="filas2">' . $fila['hora'] . '</td>';
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
