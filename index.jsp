<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Venta de Pasajes</title>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/main.css">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <form action="calcula.jsp" method="GET">
                    <label>Ingrese su nombre</label>
                    <input type="text" class="form-control" name="nomPasajero" size="40" placeholder="Nombre del Pasajero" autofocus ><br><br>
                    
                    <label>Elija su Destino</label>
                    <input type="radio" name="destino" value="Rancagua"> Rancagua
                    <input type="radio" name="destino" value="San Fernando"> San Fernando
                    <input type="radio" name="destino" value="Tren del Recuerdo"> Tren del Recuerdo
                    <input type="radio" name="destino" value="Directo al Sur"> Directo al Sur
                    <br><br>
                    <label>Tipo de Servicio</label>
                    <input type="radio" name="servicio" value="General"> General
                    <input type="radio" name="servicio" value="VIP"> VIP
                    <br><br>
                    <label>Seleccione la cantidad de Pasajes</label>
                    <input type="radio" name="pasajeros" value="1"> 1
                    <input type="radio" name="pasajeros" value="2"> 2
                    <input type="radio" name="pasajeros" value="3"> 3
                    <input type="radio" name="pasajeros" value="4"> 4
                    <br><br>
                    <input type="submit" name="Enviar" value="Comprar" class="btn btn-success">
                </form> 
 
            </div>
        </div>

        <script type="text/javascript" src="assets/js/jquery.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

    </body>
</html>
