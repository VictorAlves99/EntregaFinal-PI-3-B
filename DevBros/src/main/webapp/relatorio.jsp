<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Relatório de Vendas</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
</head>
<body>
    <header>
        <div>
            <img src="img/logo simple.png">
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
    <form>
        <div class="divDeA">
            <p>De:</p>
            <input type="date" name="inicio">
            <p>à:</p>
            <input type="date" name="fim">
            <button>OK</button>
        </div>
    </form>
    <table border="1" class="tb_com_celula_fixa">
        <thead>
            <tr>
                <th>Data da Compra</th>
                <th>Login do Usuário</th>
                <th>Filial</th>
                <th>CPF do Cliente</th>
                <th>Produto</th>
                <th>Quantidade</th>
                <th>Valor total</th>
                <th>Forma de Pagamento</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listaVendas}" var="venda">
                <tr class="conteudo">
                    <td><c:out value="${venda.dataVenda}"/></td>
                    <td><c:out value="${venda.user}"/></td>
                    <td><c:out value="${venda.filial}"/></td>
                    <td><c:out value="${venda.cpfCliente}"/></td>
                    <td><c:out value="${venda.produto}"/></td>
                    <td><c:out value="${venda.quantidade}"/></td>
                    <td><c:out value="${venda.valorTotal}"/></td>
                    <td><c:out value="${venda.formaPgto}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
