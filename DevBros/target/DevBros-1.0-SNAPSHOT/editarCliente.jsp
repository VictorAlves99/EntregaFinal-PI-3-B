<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
        <link href="CSS/cadastro-clientes.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
                        <a class="dropdown-item" href="/DevBros/consultar">Consultar</a>
                    </div>
                </li>


                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Cliente</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/cadastrar-clientes.jsp">Cadastrar</a>
                        <a class="dropdown-item" href="/DevBros/consultarclientes">Consultar</a>
                    </div>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Funcionario</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/cadastrar-funcionarios.jsp">Cadastrar</a>
                        <a class="dropdown-item" href="/DevBros/lista">Consultar</a>
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

    <div class="container">
        <div class="jumbotron">
            <div class="media border p-1">
                <img src="img/mario_cliente.png" alt="Novo Cliente" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                <div class="media-body">
                    <h4>Novo Cliente</h4>   
                </div>
            </div>

            <form action="alterarcliente"  method="post">

                <div class="form-group">
                    <label for="codCliente">Código Cliente:</label>
                    <input type="text" class="form-control" id="nome" name="codCliente" readonly value="${cliente.getcodCliente()}">     
                </div>

                <div class="form-group">
                    <label for="Nome">Nome:</label>
                    <input type="text" class="form-control" id="nome" placeholder="Informe seu nome completo" name="nome" required value="${cliente.getNome()}">
                    <c:if test="${not empty erroNome}">
                        <div style="background-color: lightblue"><c:out value="${erroNome}" /></div>
                    </c:if>             
                </div>

                <div class="form-group">
                    <label for="cpf">CPF:</label>
                    <input type="text" class="form-control" id="cpf" placeholder="Informe CPF (Somente números)" name="cpf" required value="${cliente.getCpf()}">
                    <c:if test="${not empty erroCPF}">
                        <div style="background-color: lightblue"><c:out value="${erroCPF}" /></div>
                    </c:if>
                </div>

                <div class="form-group">
                    <label for="Telefone">Telefone:</label>
                    <input type="text" class="form-control" id="Telefone" placeholder="Informe Celular(Somente números)" name="fone" required value="${cliente.getTelefone()}">
                    <c:if test="${not empty erroTelefone}">
                        <div style="background-color: lightblue"><c:out value="${erroTelefone}" /></div>
                    </c:if>
                </div>

                <div class="form-group">
                    <label for="Email">Email:</label>
                    <input type="email" class="form-control" id="Email" placeholder="Informe Email principal" name="email" required value="${cliente.getEmail()}">              
                    <c:if test="${not empty erroEmail}">
                        <div style="background-color: lightblue"><c:out value="${erroEmail}" /></div>
                    </c:if>
                </div>

                <div class="divBotao">
                    <button type="submit" class="btn  btn-primary">Alterar</button>
                    <a href="/DevBros/consultar-clientes.jsp"><button type="button" class="btn btn-info">Cancelar</button></a>
            </form>
        </div>

    </div>
</div>

</body>
</html>

