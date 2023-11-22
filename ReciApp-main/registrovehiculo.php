
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
    <link rel="stylesheet" href="css/index.css">
    <title>Registrar su vehiculo</title>
    <link href="https://cdn.lineicons.com/3.0/lineicons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilovehiculo.css">
</head>
<main>

    <body>
         
        <section>
            <div class="form-box">
            
                <div class="contenedor__todo">
                <div class="container__box">
                <div class="box" onclick="redirigirApanelPHP()">
                <i class="lni lni-exit"></i>
            </div>
            <script>
                function redirigirApanelPHP() {
                 window.location.href = 'bienvenida.php';
                 }
            </script>
            </div>
            <br><br><br>
                    <div class="form-value">
                        <div class="contenedor__login-register">
                            <form action="php/registro_vehiculo_be.php" class="formulario__register" method="POST">
                                <h2>Registrar vehiculo</h2>
<br><br>
                                <!-- Campos de registro existentes para el usuario -->
                                <div class="inputbox">
    <ion-icon name="document-text-outline"></ion-icon>
    <input type="number" required name="documento_usuario" placeholder="Documento del usuario">
    <label for="">Documento del usuario</label>
</div>

                                <!-- Agregar campos de registro para el vehículo -->
                                <div class="inputbox">
                                    <ion-icon name="text-outline"></ion-icon>
                                    <input type="text" required name="placa" placeholder="Placa del vehículo">
                                    <label for="">Placa del vehículo</label>
                                </div>
                                <div class="select">
                                    <select name="tipo_vehiculo" id="tipo_vehiculo">
                                        <option value="" disabled selected>Seleccione el tipo de vehiculo</option>
                                        <option value="1">Carro a gasolina</option>
                                        <option value="2">Carro eléctrico</option>
                                        <option value="3">Carro híbrido</option>
                                        <option value="4">Moto</option>
                                        <option value="5">Cuatrimoto</option>
                                        <option value="6">Bicicleta</option>
                                        <option value="7">Scooter</option>
                                        <!-- Agregar otros tipos de vehículos según su base de datos -->
                                    </select>
                                </div>
                                <br>
                                <div class="select">
                                    <select name="color_vehiculo" id="color_vehiculo">
                                        <option value="" disabled selected>Seleccione un color</option>
                                        <option value="1">Blanco</option>
                                        <option value="2">Negro</option>
                                        <option value="3">Plateado / Gris</option>
                                        <option value="4">Azul</option>
                                        <option value="5">Rojo</option>
                                        <option value="6">Verde</option>
                                        <option value="7">Marrón</option>
                                        <option value="8">Beige</option>
                                        <option value="9">Amarillo</option>
                                        <option value="10">Naranja</option>
                                        <option value="11">Dorado</option>
                                        <option value="12">Bronce</option>
                                        <option value="13">Morado</option>
                                        <option value="14">Rosa</option>
                                        <option value="15">Turquesa</option>
                                        <!-- Agregar otros colores de vehículos según su base de datos -->
                                    </select>
                                </div>

                                <!-- Agregar campo oculto para almacenar usuario_id -->
                                <input type="hidden" name="usuario_id" value="<?php echo $_SESSION['usuario_id']; ?>">

                            <br><br><br>
                                <button>Registrar Vehiculo</button>
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
