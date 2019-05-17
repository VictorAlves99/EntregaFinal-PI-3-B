<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Relatório de Vendas</title>
    <link href="CSS/relatorio.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
</head>
<body>
    <header>
        <div>
            <img src="img/logo-simple.png">
            <h1>Noobies</h1>
        </div>
    </header>
    <div class="divProds">
        <h2>Relatório</h2>
    </div>
    <hr>
    <br>
    <center><h3>Período de vendas</h3></center>
    <br>
    <form action="gerarRelatorio">
        <div class="divDeA">
            <p>De:</p>
            <input type="date" name="inicio">
            <p>à:</p>
            <input type="date" name="fim">
            <button type="submit">OK</button>
        </div>
    </form>
    <table class="tb_com_celula_fixa">
        <thead>
            <tr>
                <th>Código Venda</th>
                <th>Data da Compra</th>
                <th>Código User</th>
                <th>CPF Cliente</th>
                <th>Código Produto</th>
                <th>Valor total</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listaVendas}" var="venda">
                <tr class="conteudo">
                    <td><c:out value="${venda.COD_VENDA}"/></td>
                    <td><c:out value="${venda.DATA_COMPRA}"/></td>
                    <td><c:out value="${venda.COD_FUNCIONARIO}"/></td>
                    <td><c:out value="${venda.CPF_CLIENTE}"/></td>
                    <td><c:out value="${venda.COD_PRODUTO}"/></td>
                    <td><c:out value="${venda.VALOR_TOTAL}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
