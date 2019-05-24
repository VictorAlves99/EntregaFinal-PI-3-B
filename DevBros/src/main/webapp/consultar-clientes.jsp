<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        
        <title>Consulta de Clientes</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/consultar-clientes.css" type = "text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>

        <nav class="navbar navbar-expand-sm  bg-light ">
            <a class="navbar-brand" href="/DevBros/menu.jsp">
                <img src="img/logo-simple.png" alt="Logo" style="width:50px;">
            </a>

            <ul class="nav navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Produto</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/cadastrar-produtos.jsp">Cadastrar</a>
                        <a class="dropdown-item" href="/DevBros/consultar-produtos.jsp">Consultar</a>
                    </div>
                </li>


                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Cliente</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/cadastrar-clientes.jsp">Cadastrar</a>
                        <a class="dropdown-item" href="/DevBros/consultar-clientes.jsp">Consultar</a>
                    </div>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Funcionario</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/cadastrar-funcionarios.jsp">Cadastrar</a>
                        <a class="dropdown-item" href="/DevBros/listar-funcionarios.jsp">Consultar</a>
                    </div>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Vendas
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/vendas.jsp">Nova Venda</a>
                        <a class="dropdown-item" href="/DevBros/relatorio.jsp">Relatório</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
        


        <div class="container mt-3">
            <form action="pesquisaCliente" method="post"> 
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search">                    
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit">Go</button>  
                    </div>
                </div>
            </form>
        </div>

        <div class="container">    
        <table class="table table-striped">
            <thead>                     
                <tr class="linhaPrinc">
                    <th class="tcodCliente">Id</th>
                    <th class="tcpf">CPF</th> 
                    <th class="tnome">Nome</th>                                  
                    <th class="ttelefone">Telefone</th>
                    <th class="temail">E-mail</th>
                    <th class="tacoes">Ações</th>
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
                                <button class="edit">EDITAR</button></a>
                            <a class="ancora" href="excluirCliente?codCliente=<c:out value='${cliente.codCliente}'/>">Deletar</a>
                        </td>
                    </tr>
                </c:forEach>                    
            </tbody>
        </table>
        
            
</body>
</html>