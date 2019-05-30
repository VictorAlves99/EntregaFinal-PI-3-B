<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Home</title>
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>   
    </head>
    <body>       

        <nav class="navbar navbar-expand-sm  bg-light ">
            <a class="navbar-brand" href="/DevBros/index.jsp">
                <img src="img/logo-simple.png" alt="Logo" style="width:50px;">
            </a>
        </nav>

        <div class="card-columns">

            <div class="card bg-primary">
                <div class="card-body text-center">
                    <p class="card-text"><a href="/DevBros/cadastrar-produtos.jsp" style="text-decoration: none; color: white;">Produto</a></p>
                </div>
            </div>

            <div class="card bg-warning">
                <div class="card-body text-center">
                    <p class="card-text"><a href="/DevBros/cadastrar-clientes.jsp" style="text-decoration: none; color: white;">Cliente</a></p>
                </div>
            </div>
            <div class="card bg-success">
                <div class="card-body text-center">
                    <p class="card-text"><a href="/DevBros/cadastrar-funcionarios.jsp" style="text-decoration: none; color: white;">Funcionario</a></p>
                </div>
            </div>
            <div class="card bg-danger">
                <div class="card-body text-center">
                    <p class="card-text"><a href="/DevBros/vendas.jsp" style="text-decoration: none; color: white;">Venda</a></p>
                </div>
            </div>  
        </div>


    </body>
</html>