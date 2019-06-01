<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Nova Venda</title>
        <link rel="stylesheet" href="CSS/vendas.css" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    </head>
    <body>
<<<<<<< HEAD

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
=======
        <header>
            <div class="titulo">
                <a href="/DevBros/menu.jsp"><img class="logo" src="https://i.imgur.com/1ayr6NR.png"></a>
                <h1>Noobies</h1>
            </div>
        </header>
    <center>
        <h1>VENDA DE PRODUTOS</h1>
        <hr>
    </center>
    <div class="codigoprod">
        <form action="pesquisaProdVenda" method="POST">
            <label class="codigo">Código do produto: </label><input class="codigo" type="text" name="cod_produto">
            <label>Quantidade: </label><input class="quantidadeTxt" type="text" name="quantidadeVenda">
            <button submit="ok">OK</button>
        </form>
    </div>
    <form action="finalizarCompra" method="post" class = "conteudo">
        <div class="quantidade">
            <label class="cpf">CPF do cliente: </label><input class="cpfTxt" type="text" name="cpfcliente">            
            <label class="filial">Filial: </label><input class="filialTxt" type="text" name="filialE" value="${funcionario.getFilial()}" readonly></input>
>>>>>>> a0a9efdd1a8a2190bfc87f57d0f71089efe7402d
        </div>
    </nav>

<<<<<<< HEAD
    <div class="container" id="Dados">
        <div class="panel panel-default" >
            <div class="panel-heading">Produto</div>
            <div class="panel-body">

                <div id="InformacaoProd">
                    <div class="form-group">
                        <form action="pesquisaProdVenda" method="POST">

                            <div id="cdProd">
                                <label for="codigoProduto">Código do produto: </label>
                                <input class="form-control" type="text" name="cod_produto" style="width: 400px;">
                            </div>

                            <div id="QtdProd">
                                <label for="QuantidadeProduto">Quantidade: </label>
                                <input class="form-control" type="text" name="quantidadeVenda" style="width: 400px;">
                                
                            </div>
                            
                      
                        
                         <div class="divBotaoAdd">
                             <button type="submit" class="btn btn-success" id="btnAdd"><b>+</b></button> 
                                    
                                </div>
                             </form>
                    </div>
=======
        <table class="tabela">
            <thead>
                <tr class="row">
                    <th class="codProd">CÓDIGO DO ITEM</th>
                    <th class="codProd">CÓDIGO DO PRODUTO</th>
                    <th class="nome">NOME DO PRODUTO</th>
                    <th class="categoria">CATEGORIA</th>
                    <th class="quantidadeProd">QUANTIDADE</th>
                    <th class="valor">VALOR UNITÁRIO</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaItens}" var="item">
                    <tr class="conteudo">
                        <td><c:out value="${item.idItem}"/></td>
                        <td><c:out value="${item.produto.codProduto}"/></td>
                        <td><c:out value="${item.produto.nomeProd}"/></td>
                        <td><c:out value="${item.produto.categoria}"/></td>
                        <td><c:out value="${item.quantidade}"/></td>
                        <td><c:out value="${item.produto.valorVenda}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
                <div class="faixapgmto">
                    <div class="pgto"><h2>Total a pagar:</h2></div>
                    R$<input type="text" name="valorTotal" readonly value="${valor}"/>
                 
                <div class="formaspgmto">
                    <legend class="checkies">Formas de pagamento:</legend>
                    <input type="radio" name="pgto" value="Dinheiro" /> <label>Dinheiro</label>
                    <input type="radio" name="pgto" value="Débito" /> <label>Débito</label>
                    <input type="radio" name="pgto" value="Crédito" /> <label>Crédito</label>
>>>>>>> a0a9efdd1a8a2190bfc87f57d0f71089efe7402d
                </div>

                <div class="container">  
                <div id="tabelaProduto" >
                    <form action="finalizarCompra" method="post" class = "conteudo">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th class="codProd">Cod.Produto</th>
                                    <th class="nome">Produto</th>
                                    <th class="categoria">Categoria</th>
                                    <th class="quantidadeProd">Quantidade</th>
                                    <th class="valor">Valor Unitário</th>
                                    <th class="tacoes">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listaItens}" var="item">
                                    <tr class="conteudo">
                                        <td><c:out value="${item.produto.codProduto}"/></td>
                                        <td><c:out value="${item.produto.nomeProd}"/></td>
                                        <td><c:out value="${item.produto.categoria}"/></td>
                                        <td><c:out value="${item.quantidade}"/></td>
                                        <td><c:out value="${item.produto.valorVenda}"/></td>
                                        <td>
                                        <a class="ancora" href="#"><button class="btn btn-warning">Excluir</button></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>

                        </table>
                    </form>
                </div>                    
            </div>
        </div>
        </div>
    </div>
    </div>  
    <div class="container" id="formasDepagamento">
        <div class="panel panel-default">
            <div class="panel-heading">Concluir Venda</div>
            <div class="panel-body">
                <div class="faixapgmto">

                    <div class="pgto"><h4>Total a pagar:</h4></div>
                    <label for="R$">R$:</label>
                    <input class="form-control" type="text" name="valorTotal" readonly value="${valor.getContaTotal()}" style="width: 400px;">    

                    <div class="formaspgmto">
                        <label>Formas de pagamento:</label>             
                        <label class="radio-inline"><input type="radio" name="pgto" value="Dinheiro" checked>Dinheiro</label>
                        <label class="radio-inline"><input type="radio" name="pgto" value="Débito" >Débito</label>
                        <label class="radio-inline"><input type="radio" name="pgto" value="Crédito" >Crédito</label>    
                    </div>                
                </div>

                <div class="divBotao">
                    <a href="/DevBros/relatorio.jsp"><button type="button" class="btn btn-success">Comprar</button></a>
                    <a href="/DevBros/relatorio.jsp"><button type="button" class="btn btn-danger">Cancelar</button></a>
                </div>
            </div>    
        </div>
    </div>                  




</body>
</html>
