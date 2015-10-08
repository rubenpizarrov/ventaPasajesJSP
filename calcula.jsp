<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String strDestino = request.getParameter("destino");
    String strServicio = request.getParameter("servicio");
    int numPasajes = Integer.parseInt(request.getParameter("pasajeros"));
    String strNombre = request.getParameter("nomPasajero");
    int valorPasaje = 0;
    int totalPasaje = 0;
    int tasaEmbarque = 0;
    
    if (strDestino.equals("Rancagua") && strServicio.equals("General")) {
        valorPasaje = 25000;
        tasaEmbarque = 2500;
        totalPasaje = (valorPasaje * numPasajes) + (valorPasaje * tasaEmbarque);

    } else {
        if (strDestino.equals("Rancagua") && strServicio.equals("VIP")) {
            valorPasaje = 35000;
            tasaEmbarque = 2500;
            totalPasaje = (valorPasaje * numPasajes) + (numPasajes * tasaEmbarque);

        } else {
            if (strDestino.equals("San Fernando") && strServicio.equals("General")) {
                valorPasaje = 45000;
                tasaEmbarque = 3000;
                totalPasaje = (valorPasaje * numPasajes) + (numPasajes * tasaEmbarque);
            } else {
                if (strDestino.equals("San Fernando") && strServicio.equals("VIP")) {
                    valorPasaje = 55000;
                    tasaEmbarque = 3000;
                    totalPasaje = (valorPasaje * numPasajes) + (numPasajes * tasaEmbarque);
                } else {
                    if (strDestino.equals("Tren del Recuerdo") && strServicio.equals("General")) {
                        valorPasaje = 40000;
                        tasaEmbarque = 3500;
                        totalPasaje = (valorPasaje * numPasajes) + (numPasajes * tasaEmbarque);
                    } else {
                        if (strDestino.equals("Tren del Recuerdo") && strServicio.equals("VIP")) {
                            valorPasaje = 50000;
                            tasaEmbarque = 3500;
                            totalPasaje = (valorPasaje * numPasajes) + (numPasajes * tasaEmbarque);
                        } else {
                            if (strDestino.equals("Directo al Sur") && strServicio.equals("General")) {
                                valorPasaje = 68000;
                                tasaEmbarque = 10000;
                                totalPasaje = (valorPasaje * numPasajes) + (numPasajes * tasaEmbarque);
                            } else {
                                if (strDestino.equals("Directo al Sur") && strServicio.equals("VIP")) {
                                    valorPasaje = 75000;
                                    tasaEmbarque = 15000;
                                    totalPasaje = (valorPasaje * numPasajes) + (numPasajes * tasaEmbarque);
                                }
                            }
                        }
                    }
                }
            }
        }
    }


%>

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
                <p>Nombre: <%= strNombre%></p>
                <p>Destino: <%= strDestino%></p>
                <p>Tipo Servicio: <%= strServicio%></p>
                <p>Cant. Pasajes: <%= numPasajes%></p>
                <p>Valor Tasa de Embarque <%= tasaEmbarque %></p>
              
                <p>Valor por pasaje individual <%= valorPasaje%></p>
                <p>El valor de total de su compra es <%= totalPasaje%></p>
            </div>

        </div>

        <script type="text/javascript" src="assets/js/jquery.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

    </body>
</html>
