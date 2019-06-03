<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Home</title>
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/menu-principal.css" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>  
        
    </head>
    <body>       


        <nav class="navbar navbar-expand-sm  bg-light ">
            <img src="img/logo-simple.png" alt="Logo" style="width:50px;">
                <ul class="nav navbar-nav">
                    <li class="nav-item dropdown">                        
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">                         
                                    <c:out value="${sessionScope.usuario.cargo}" />
                            </a>                                     
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/DevBros/index.jsp">Sair</a>
                        </div>
                    </li> 
                </ul>
        </nav>

        <div class="card-deck mb-4">

            <div class="container" id="cardCliente" style="width: 1%; margin-left:60px; margin-right:-10px;">

                <div class="card" style="width:300px; top: 90px;">
                    <img class="card-img-top" src="img/mario_cliente.png">
                    <div class="card-body">
                        <h4 class="card-title">Clientes</h4>
                        <p class="card-text">Cadastro e Consulta de Clientes</p>
                             <a href="/DevBros/cadastrar-clientes.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>

            <div class="container" id="cardProd" style="width: 1%; margin-right:-10px;">

                <div class="card" style="width:300px; top: 90px;">
                    <img class="card-img-top" src="img/produto_novo_2.png" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title">Produtos</h4>
                        <p class="card-text">Cadastro e Consulta de Produtos</p>
                        <a href="/DevBros/cadastrar-produtos.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>


            <div class="container"  id="cardFunc" style="width: 1%; margin-right:-10px;">

                <div class="card" style="width:300px; top: 90px;">
                    <img class="card-img-top" src="img/funcionario_icon_azul.png" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title">Funcionários</h4>
                        <p class="card-text">Cadastro e Consulta de Funcionários</p>
                        <a href="/DevBros/cadastrar-funcionarios.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>

            <div class="container" id="cardVendas" style="width: 1%; ">
                <div class="card" style="width:300px; top: 90px;">
                    <img class="card-img-top" src="img/icon-order.svg" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title">Vendas</h4>
                        <p class="card-text">Cadastro e Relatório de Vendas</p>
                        <a href="/DevBros/vendas.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>