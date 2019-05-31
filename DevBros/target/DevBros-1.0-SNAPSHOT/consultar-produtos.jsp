<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
<<<<<<< HEAD
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Consulta de Produtos</title>
        <link rel="stylesheet" href="CSS/consultar-produtos.css">
        <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    </head>
    <body>
        
        <div id="fixed">
            <header>
                <div>
                    <a href="/DevBros/menu.jsp"><img src="img/logo-simple.png"/></a>
                    <h1>Noobies</h1>
                </div>
            </header>
        <div class="divProds">
            <h2>CONSULTA DE PRODUTOS</h2>
        </div>
        <div class="pesquisaExc">
                <h4>Pesquisa</h4>
                <form action="pesquisaProduto" method="post">
                    <input type="text" name="pesquisa">
                    <c:if test="${not empty erroPesquisa}">
                        <div style="background-color: lightcoral"><c:out value="${erroPesquisa}" /></div>
                    </c:if>
                    <button class="buttonBusca"/>BUSCAR</button>
                </form>
        </div>
        <div id="resto">
            <div class="organizar">
                <div class="organizarTable">
                    <table class="tabela">
                        <thead>
                            <tr class="linhaPrinc">
                                <th>ID</th>
                                <th>NOME</th>
                                <th>V.COMPRA</th>
                                <th>V.VENDA</th>
                                <th>QUANTIDADE</th>
                                <th>CATEGORIA</th>
                                <th>AÇÕES</th>
                            </tr>
                        </thead>
                        <tbody>
                           <c:forEach items="${listaProdutos}" var="produto" >
                                <tr class="linhaSec">
                                    <td><c:out value="${produto.codProduto}" /></td>
                                    <td><c:out value="${produto.nomeProd}" /></td>
                                    <td><c:out value="${produto.valorCompra}" /></td>
                                    <td><c:out value="${produto.valorVenda}" /></td>
                                    <td><c:out value="${produto.quantidade}" /></td>
                                    <td><c:out value="${produto.categoria}" /></td>
                                    <td>
                                        <a class="ancora" href="editarProdForm?codProduto=<c:out value='${produto.codProduto}'/>&nomeProd=<c:out value='${produto.nomeProd}'/>&valorCompra=<c:out value='${produto.valorCompra}'/>&valorVenda=<c:out value='${produto.valorVenda}'/>&quantidade=<c:out value='${produto.quantidade}'/>&categoria=<c:out value='${produto.categoria}'/>">
                                            <button>Editar</button>
                                        </a>
                                        <a class="ancora" href="excluirProd?codProduto=<c:out value='${produto.codProduto}'/>">
                                            <button>Deletar</button>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
=======
        <title>Consulta de Produtos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Consulta de Produtos</title>
        <link rel="stylesheet" href="CSS/consultar-clientes.css">
        <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
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

    <div class="container mt-3">
        <div class="topoPesquisa">
            <div  class="headerPesquisa">
                <h4>Pesquisa</h4>  
            </div>
            <div class="headerPesquisaNovo">
                <button type="button" class="btn btn-success"><a class="ancora" href="/DevBros/cadastrar-produtos.jsp">+ Novo</a></button>
            </div>
        </div>


        <form action="pesquisaProduto" method="post">
            <div class="input-group mb-3">
                
                <input type="text" name="pesquisa" class="form-control" placeholder="Search"> 
                <c:if test="${not empty erroPesquisa}">
                    <div style="background-color: lightblue"><c:out value="${erroPesquisa}" /></div>
                </c:if>
                <div class="input-group-append">
                    <button class="btn btn-primary">Go</button>  
                </div>
            </div>
        </form>

        <div class="container">    
            <table class="table table-hover">                 
                <thead>
                    <tr class="linhaPrinc">
                        <th>Id</th>
                        <th>Produto</th>
                        <th>V.Compra</th>
                        <th>V.Venda</th>
                        <th>Quantidade</th>
                        <th>Categoria</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listaProdutos}" var="produto" >
                        <tr class="linhaSec">
                            <td><c:out value="${produto.codProduto}" /></td>
                            <td><c:out value="${produto.nomeProd}" /></td>
                            <td><c:out value="${produto.valorCompra}" /></td>
                            <td><c:out value="${produto.valorVenda}" /></td>
                            <td><c:out value="${produto.quantidade}" /></td>
                            <td><c:out value="${produto.categoria}" /></td>
                            <td>
                                <a class="ancora" href="editarProdForm?codProduto=<c:out value='${produto.codProduto}'/>&nomeProd=<c:out value='${produto.nomeProd}'/>&valorCompra=<c:out value='${produto.valorCompra}'/>&valorVenda=<c:out value='${produto.valorVenda}'/>&quantidade=<c:out value='${produto.quantidade}'/>&categoria=<c:out value='${produto.categoria}'/>">
                                    <button class="btn btn-warning">Editar</button>
                                </a>
                                <a class="ancora" href="excluirProd?codProduto=<c:out value='${produto.codProduto}'/>">
                                    <button class="btn btn-danger">Deletar</button>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
</html>