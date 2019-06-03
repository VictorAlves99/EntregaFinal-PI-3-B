<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Relatório de Vendas</title>
    <link href="CSS/relatorio.css" rel="stylesheet" type="text/css"/>
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
            
                 <div class="topoPesquisa">
            <div  class="headerPesquisa">
            <h4>Pesquisa</h4>  
            </div>
            <div class="headerPesquisaNovo">
                <button type="button" class="btn btn-success"><a class="ancora" href="/DevBros/vendas.jsp">+ Novo</a></button>
            </div>
        </div>
            
            
    <form action="gerarRelatorio" method="post">
        <div class="form-group">
            <div id="De">
            <label for="De">De:</label>
            <input type="date" class="form-control" name="inicio" required style="width: 400px;">
            </div>
            
            <div id="Ate">
            <label for="À">à:</label>
            <input type="date" class="form-control" name="fim" required style="width: 400px;">     
            </div>
            <br>&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="submit" class="btn btn-primary">Pesquisar</button>
        </div>
    </form>
    
    <div class="container">  
        <table class="table table-hover">
          <thead>
            <tr>
                <th>Valor total</th>
                <th>Forma de Pagamento</th>
                <th>Data da Compra</th>
            </tr>
        </thead>
         <tbody>
            <c:forEach items="${listaVendas}" var="venda">
                <tr class="conteudo">
                    <td><c:out value="${venda.valorTotal}"/></td>
                    <td><c:out value="${venda.formaPgto}"/></td>
                    <td><c:out value="${venda.dataCompra}"/></td>
                </tr>
            </c:forEach>
        </tbody>
        </table>
        
    </div>
        </div>
    </div>        
    
</body>
</html>
