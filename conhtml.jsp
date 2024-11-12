<%@ page language="java" contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de alumnos</title>
    <!-- Bootstrap CSS desde la carpeta local -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="tinymce/js/tinymce/tinymce.min.js"></script>
    <style>
        /* Modificar el tamaño de las columnas */
        .col-md-4 {
            max-width: 200px;
            /* Puedes reducir el valor para que los campos sean más pequeños */
        }

        /* Reducir el padding y márgenes en los inputs */
        .form-floating .form-control {
            padding: 5px;
            /* Reduce el padding dentro del campo */
            font-size: 0.9rem;
            /* Reduce el tamaño de la fuente */
        }

        /* Ajustar el contenedor del formulario */
        .form-container {
            padding: 5px;
            /* Reduce el padding del contenedor */
            margin: 10px;
            /* Reduce los márgenes */
        }

        /* Ajustar el botón */
        .btn {
            font-size: 0.7rem;
            /* Reducir el tamaño del botón */
            padding: 5px 8px;
            /* Reducir el padding del botón */
            color: red;
            border-color: #004182;
        }

        /* Paleta de colores */
        body {
            background-color: #FFFFFF;
            /* Blanco de fondo */
            font-family: Arial, sans-serif;
        }

        .header {
            background-color: #004182;
            /* Azul oscuro */
            color: white;
            padding: 6px;
            text-align: center;
            display: flex;
            align-items: center;
            /* Alinea verticalmente los elementos al centro */
            justify-content: space-between;
            /* Separa las imágenes a los extremos */
        }

        .header-text {
            text-align: center;
            flex-grow: 1;
            /* Permite que el texto ocupe el espacio entre las imágenes */
        }

        .header h1 {
            margin: 0;
            font-size: 36px;
            font-weight: bold;
        }

        .header p {
            font-size: 18px;
        }

        .left-image,
        .right-image {
            flex-shrink: 0;
            /* Impide que las imágenes se reduzcan demasiado */
        }

        .form-container {
            background-color: #ffffff;
            /* Color del contenedor */
            border-radius: 5px;
            /* Bordes redondeados */
            padding: 0px;
            /* Espaciado interno */
            margin: 0px;
            /* Espaciado externo */
        }

        .form-registro {
            background-color: #ffffff;
            /* Color del contenedor */
            border-radius: 15px;
            /* Bordes redondeados */
            padding: 10px;
            /* Espaciado interno */
            margin: 5px;
            /* Espaciado externo */
        }

        .custom-height {
            padding: 0.5rem;
            /* Reduce el padding interno */
            height: 18px;
            /* Ajusta la altura */
        }
    </style>
</head>

<body>

    <!-- Cabecera -->
    <div class="header">
        <img src="imgs/tecnmlogo.png" alt="teclogo" class="left-image" width="100px">
        <div class="header-text">
            <h1>TECNOLÓGICO NACIONAL DE MÉXICO</h1>
        </div>
        <img src="imgs/itcuautla.png" alt="itlogo" class="right-image" width="100px">
    </div>

    <!-- Contenido aquí -->
    <div class="container mt-4">
        <div class="form-container">
            <div class="container mt-4">
                <div class="form-registro">
                    <form class="row g-3" id="form-registro">

                        <div>
                            <b>Datos del alumno</b>
                        </div>
                        <!--NOMBRE-->
                        <div class="col-md-4">
                            <div class="form-group">
                                <input type="text" id="nombre" name="nombre" class="form-control custom-height" placeholder="Nombre"
                                    required minlength="2" maxlength="50"
                                    pattern="^[A-Z][a-zA-Z\s]*$"
                                    title="Introduce un nombre que comience con una letra mayúscula y contenga solo letras y espacios.">
                            </div>
                            
                        </div>

                        <!-- APELLIDO PATERNO -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="apaterno"    
                                placeholder="Apellido paterno" required minlength="2" maxlength="50"
                                pattern="^[A-Z][a-zA-Z\s]*$"
                                title="Introduce un nombre que comience con una letra mayúscula y contenga solo letras y espacios.">
                            </div>
                        </div>

                        <!--MATERNO-->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="amaterno"
                                    placeholder="Apellido materno">
                            </div>
                        </div>

                        <!-- CORREO -->
                        <!-- CORREO -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="correo"
                                    placeholder="control@cuautla.tecnm.mx" required
                                    pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}"
                                    title="Introduce un correo electrónico válido. Ejemplo: control@cuautla.tecnm.mx">
                            </div>
                        </div>


                        <!-- CORREO 2 pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$" -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="correo2"
                                    placeholder="Email personal" required
                                    pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}"                                    "
                                    title="Introduce un correo electrónico válido. Ejemplo: ejemplo@dominio.com">
                            </div>
                        </div>



                        <!-- CARRERA -->
                        <div class="col-md-4">
                            <div class="form-group">
                                <select id="carrera" name="carrera" class="form-select w-50"
                                    aria-label="Default select example" required>
                                    <option value="" disabled selected>Selecciona una carrera</option>
                                    <option value="1">Sistemas</option>
                                    <option value="2">Electrónica</option>
                                    <option value="3">Mecatrónica</option>
                                    <option value="4">Gestión empresarial</option>
                                    <option value="5">Civil</option>
                                    <option value="6">Contador</option>
                                    <option value="7">Maestro/Administrativo</option>
                                </select>
                            </div>
                        </div>

                        <!-- SEMESTRE -->
                        <div class="col-md-4">
                            <div class="form-group">
                                <select id="semestre" name="semestre" class="form-select w-50"
                                    aria-label="Default select example" required>
                                    <option value="" disabled selected>Selecciona un semestre</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                </select>
                            </div>
                        </div>

                        <!-- TELÉFONO -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="tel" class="form-control custom-height" id="telefono" name="telefono"
                                    placeholder="Teléfono celular" required pattern="^\d{10}$"
                                    title="Introduce un número de teléfono válido (10 dígitos).">
                            </div>
                        </div>

                        <!-- TELÉFONO 2 -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="tel" class="form-control custom-height" id="telefono2" name="telefono2"
                                    placeholder="Teléfono fijo" required pattern="^\d{10}$"
                                    title="Introduce un número de teléfono válido (10 dígitos).">
                            </div>
                        </div>

                        <hr style="border: 2px solid #000000;">
                        <!-- GÉNERO -->
                        <div class="col-md-4" id="genero">
                            <label class="form-label"><b>Género</b></label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="genero" id="hombre" value="hombre"
                                    required>
                                <label class="form-check-label" for="hombre">Hombre</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="genero" id="mujer" value="mujer"
                                    required>
                                <label class="form-check-label" for="mujer">Mujer</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="genero" id="otrogenero" value="otro"
                                    required>
                                <label class="form-check-label" for="otrogenero">Otro</label>
                            </div>
                        </div>

                        <!-- ESTADO CIVIL -->
                        <div class="col-md-4" id="estadocivil">
                            <label class="form-label"><b>Estado civil</b></label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="estadoCivil" id="soltero"
                                    value="soltero" required>
                                <label class="form-check-label" for="soltero">Soltero</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="estadoCivil" id="casado"
                                    value="casado" required>
                                <label class="form-check-label" for="casado">Casado</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="estadoCivil" id="otroestado"
                                    value="otroestado" required>
                                <label class="form-check-label" for="otroestado">Otro</label>
                            </div>
                        </div>

                        <!--

                        <hr style="border: 2px solid #000000;">
                            <div class="col-md-4">
                                <div class="mb-3">
                                Fecha de nacimiento

                                    <input type="date" class="form-control custom-height" id="fechaNacimiento" placeholder="Fecha de nacimiento">
                                </div>
                            </div>
-->
                        <!-- CURP -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="curp" name="curp"
                                    placeholder="CURP" pattern="[A-Z]{4}[0-9]{6}[HM]{1}[A-Z]{2}[0-9A-Z]{3}[0-9A-Z]{2}"
                                    required
                                    title="Introduce una CURP válida (4 letras, 6 números, 6 letras, 2 número o letra).">
                            </div>
                        </div>

                        <!-- NSS -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="number" class="form-control custom-height" id="nss" name="nss"
                                    placeholder="NSS" required min="10000000000" max="99999999999"
                                    title="El NSS debe tener exactamente 11 dígitos numéricos.">
                            </div>
                        </div>


                        <hr style="border: 2px solid #000000;">
                        <!--DIRECIÓN-->
                        <div>
                            <b>Dirección</b>
                        </div>
                        <!-- Calle -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="calle" name="calle"
                                    placeholder="Calle y Número" required minlength="5" maxlength="100"
                                    pattern="^[a-zA-Z0-9\s.-]+$"
                                    title="Introduce la calle y número, utilizando solo letras, números, espacios, puntos o guiones, con un mínimo de 5 caracteres.">
                            </div>
                        </div>
                        
                        <!--
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <input type="name" class="form-control custom-height" id="num" placeholder="Número">
                                </div>
                            </div>-->

                        <!-- CÓDIGO POSTAL -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="number" class="form-control custom-height" id="cp" name="cp"
                                    placeholder="Código Postal" required min="10000" max="99999"
                                    title="Introduce un código postal de 5 dígitos.">
                            </div>
                        </div>                        

                        <!-- COLONIA -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="colonia" name="colonia"
                                    placeholder="Colonia" required minlength="3" maxlength="50"
                                    pattern="^[a-zA-ZÀ-ÿ\s]+$"
                                    title="Introduce la colonia, usando solo letras y espacios, con un mínimo de 3 caracteres.">
                            </div>
                        </div>

                        <!-- CIUDAD -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="ciudad" name="ciudad"
                                    placeholder="Ciudad" required minlength="3" maxlength="50"
                                    pattern="^[a-zA-ZÀ-ÿ\s]+$"
                                    title="Introduce la ciudad, usando solo letras y espacios, con un mínimo de 3 caracteres.">
                            </div>
                        </div>

                        <!-- ESTADO -->
                        <div class="col-md-4">
                            <div class="mb-3">
                                <input type="text" class="form-control custom-height" id="estado" name="estado"
                                    placeholder="Estado" required minlength="3" maxlength="50"
                                    pattern="^[a-zA-ZÀ-ÿ\s]+$"
                                    title="Introduce el estado, usando solo letras y espacios, con un mínimo de 3 caracteres.">
                            </div>
                        </div>

                        <hr style="border: 2px solid #000000;">
                        <button type="submit" class="btn btn-outline-success">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- 
    <label for="miTextarea">Escribe algo:</label>
    <textarea id="miTextarea" name="contenido"></textarea>
    Bootstrap JS desde la carpeta local 
    <script>
        tinymce.init({
            selector: '#miTextarea',  // Aplica el editor al textarea
            language: 'es',  // Cambia el idioma a español
            language_url: '/tinymce/js/tinymce/langs/es.js'  // Ruta al archivo de idioma español
        });
    </script>
-->
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>