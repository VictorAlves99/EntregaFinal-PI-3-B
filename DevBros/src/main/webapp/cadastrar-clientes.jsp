<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cadastro de clientes</title>
        <link rel="stylesheet" href="CSS/cadastro-clientes.css" type = "text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="cadastro-clientes.css" type = "text/css">
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
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Produto
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/cadastro-produtos.jsp">Cadastrar</a>
                        <a class="dropdown-item" href="/DevBros/consultar-produtos.jsp">Consultar</a>
                    </div>
                </li>
                
                 <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Cliente
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Cadastrar</a>
                        <a class="dropdown-item" href="#">Consultar</a>
                    </div>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Funcionario
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Cadastrar</a>
                        <a class="dropdown-item" href="#">Consultar</a>
                    </div>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Vendas
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Cadastrar</a>
                        <a class="dropdown-item" href="#">Consultar</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>


    <div class="formulario">
        <form action="CadastrarCliente" method="post">

            <div class="form-group">
                <label for="Nome">Nome:</label>
                <input type="text" class="form-control" id="nome" placeholder="Informe seu nome completo" name="nome" required value="${cliente.nome}">
                <c:if test="${not empty erroNome}">
                    <div style="background-color: lightblue"><c:out value="${erroNome}" /></div>
                </c:if>             
            </div>

            <div class="form-group">
                <label for="cpf">CPF:</label>
                <input type="text" class="form-control" id="cpf" placeholder="Informe CPF" name="cpf" required value="${cliente.cpf}">
                <c:if test="${not empty erroCPF}">
                    <div style="background-color: lightblue"><c:out value="${erroCPF}" /></div>
                </c:if>
            </div>


            <div class="form-group">
                <label for="Telefone">Telefone:</label>
                <input type="text" class="form-control" id="Telefone" placeholder="Informe Celular" name="Telefone" required value="${cliente.telefone}">
                <input class="telefone" type="text" name="fone" >
                <c:if test="${not empty erroTelefone}">
                    <div style="background-color: lightblue"><c:out value="${erroTelefone}" /></div>
                </c:if>
            </div>


            <div class="form-group">
                <label for="Email">Email:</label>
                <input type="text" class="email" id="Email" placeholder="Informe Email principal" name="email" required value="${cliente.email}">              
                <c:if test="${not empty erroEmail}">
                    <div style="background-color: lightblue"><c:out value="${erroEmail}" /></div>
                </c:if>
            </div>

            <div class="divBotao">
                <button type="submit" class="btn btn-success">Cadastrar</button>
                <button type="reset" class="btn btn-warning">Limpar</button>
                <a href="/DevBros/index.jsp"><button type="button" class="btn btn-danger">Cancelar</button></a>

        </form>
    </div>
</div>
</body>
</html>
