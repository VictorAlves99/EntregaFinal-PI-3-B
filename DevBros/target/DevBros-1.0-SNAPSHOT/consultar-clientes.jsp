<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Consulta de Clientes</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>


        <nav class="navbar navbar-expand-sm  bg-light">
            <a class="navbar-brand" href="#">
                <img src="logo-simple.png" alt="Logo" style="width:50px;">
            </a>
            <ul class="nav navbar-nav">
                <li><a href="#">Produtos</a></li>
                <li><a href="#">Clientes</a></li>
                <li><a href="#">Vendas</a></li>
                <li><a href="#">Funcion√°rios</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        User
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Sair</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <div class="divProds">
        <h2>Consulta de Clientes</h2>
    </div>
    <div class="pesquisaExc">
        <h4>Pesquisa</h4>
        <form action="pesquisaCliente" method="post">
            <input type="text" name="pesquisa">
            <c:if test="${not empty erroPesquisa}">
                <div style="background-color: lightcoral"><c:out value="${erroPesquisa}" /></div>
            </c:if>
            <button class="buttonBusca"/>BUSCAR</button>
        </form>
    </div>

    <div class="container">          
        <table class="table">
            <thead>                     
                <tr class="linhaPrinc">
                    <th class="tcodCliente">ID</th>
                    <th class="tcpf">CPF</th> 
                    <th class="tnome">NOME</th>                                  
                    <th class="ttelefone">TELEFONE</th>
                    <th class="temail">E-MAIL</th>
                    <th class="tacoes">A«’ES</th>
                </tr>                        
            </thead>
            <tbody>
                <c:forEach items="${listaClientes}" var="cliente" >
                    <tr class="linhaSec">
                        <td><c:out value="${cliente.codCliente}"/></td>
                        <td><c:out value="${cliente.nome}" /></td>  
                        <td><c:out value="${cliente.cpf}" /></td>        
                        <td><c:out value="${cliente.telefone}" /></td>
                        <td><c:out value="${cliente.email}" /></td>
                        <td>

                            <a class="ancora" href="editarcliente?codCliente=${cliente.codCliente}">                                   
                                <button class="edit">EDITAR</button>
                            </a>
                            <a class="ancora" href="excluirCliente?codCliente=<c:out value='${cliente.codCliente}'/>">Deletar</a>
                        </td>
                    </tr>
                </c:forEach>                    
            </tbody>
        </table>
    </div>

</body>
</html>