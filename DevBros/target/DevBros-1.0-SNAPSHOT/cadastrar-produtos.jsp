<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<<<<<<< HEAD
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Cadastro de Produtos</title>
        <link rel="stylesheet" href="CSS/cadastro-produtos.css">
        <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    </head>
    <body>
        <header>
            <div>
                <a href="/DevBros/menu.jsp"><img src="img/logo-simple.png"/></a>
                <h1>Noobies</h1>
            </div>
        </header>
        <div class="divProds">
            <h2>Cadastrar Produto</h2>
        </div>
        <hr>
        <br><br>
        <div>
            <form action="CadastrarProduto" method="post">
                <div class="divNome">
                    <p>Nome do Produto:</p>
                </div>
                <div class="divNomeInput">
                    <input name="nome" type="text" required>
                    <c:if test="${not empty erroNome}">
                        <div style="background-color: lightcoral"><c:out value="${erroNome}" /></div>
                    </c:if>
                </div>
                
                <div class="divDescricao">
                    <p>Descrição do Produto:</p>
                </div>
                <div class="divDescricaoTxtArea">
                    <textarea name="descricao"></textarea>
                    <c:if test="${not empty erroDescricao}">
                        <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                    </c:if>
                </div>
                <div class="divValorCV">
                    <p>Valor de Compra:</p>
                    <p>Valor de venda:</p>
                </div>
                <div class="divValoresInput">
                    <input name="valorCompra" type="text" required>
                    <c:if test="${not empty erroValorCompra}">
                        <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                    </c:if>                    
                    <input name="valorVenda" type="text" required>
                    <c:if test="${not empty erroValorVenda}">
                        <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                    </c:if>
                </div>
                <div class="divQTDCAT">
                    <p>Quantidade:</p>
                    <p>Categoria:</p>
                </div>
                <div class="divQTDCATInput">
                    <input name="quantidade" type="text" required>
                    <c:if test="${not empty erroQuantidade}">
                        <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                    </c:if>
                    <select name="categoria">
                        <option value="">Selecione uma Categoria...</option>
                        <option value="PS4">PS4</option>
                        <option value="XBOX-ONE">XBOX ONE</option>
                        <option value="SWITCH">Nintendo Switch</option>
                        <option value="TABULEIRO">Tabuleiro</option>
                        <option value="PC">PC</option>
                    </select>
                    <c:if test="${not empty erroCategoria}">
                        <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                    </c:if>
                </div>
                <br><br><br>
                <div class="divBotao">
                    <button type="reset">Limpar</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="submit">Cadastrar</button>
            </form>
        </div>
    </body>
=======
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cadastro de Produtos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">      
        <link rel="stylesheet" href="CSS/cadastro-produtos.css" type="text/css">
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
                <img src="img/produto_novo_2.png" alt="Novo Produto" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                <div class="media-body">
                    <h4>Novo Produto</h4>   
                </div>
            </div>   

            <form action="CadastrarProduto" method="post">

                <div class="form-group">
                    <label for="Nome">Produto:</label>
                    <input type="text" class="form-control" id="nome" placeholder="Informe Produto" name="nome" required>
                    <c:if test="${not empty erroNome}">
                        <div style="background-color: lightblue"><c:out value="${erroNome}" /></div>
                    </c:if>
                </div>

                <div class="form-group">
                    <label for="Descricao">Descrição do Produto:</label>
                    <textarea class="form-control" rows="2" id="descricao" name="descricao" placeholder="Deescreva o Produto"></textarea>
                    <c:if test="${not empty erroDescricao}">
                        <div style="background-color: lightblue"><c:out value="${erroDescricao}" /></div>
                    </c:if>
                </div>

                <div class="DivValores">

                    <div class="form-group" id="ValordaCompraform">
                        <label for="valorCompra">Valor da Compra:</label>
                        <input type="text" class="form-control" id="valorCompra" placeholder="Informe valor da Compra" name="valorCompra" required style="width: 500px;">
                        <c:if test="${not empty erroValorCompra}">
                            <div style="background-color: lightblue"><c:out value="${erroValorCompra}" /></div>
                        </c:if>

                    </div>


                    <div class="form-group" id="ValordaVendaform">
                        <label for="valorVenda">Valor da Venda:</label>
                        <input type="text" class="form-control" id="valorVenda" placeholder="Informe valor da Venda" name="valorVenda" required style="width: 520px;">
                        <c:if test="${not empty erroValorVenda}">
                            <div style="background-color: lightblue"><c:out value="${erroValorVenda}" /></div>
                        </c:if>
                    </div>
                </div>

                <div class="DivQtdCat">
                    <div class="form-group" id="QuantidadeProd">
                        <label for="quantidade">Quantidade:</label>
                        <input type="text" class="form-control" id="quantidade" placeholder="Informe Quantidade" name="quantidade" required style="width: 500px;">
                        <c:if test="${not empty erroQuantidade}">
                            <div style="background-color: lightblue"><c:out value="${erroQuantidade}" /></div>
                        </c:if>
                    </div>

                    <div class="form-group" id="CategoriaProd">
                        <label for="Categoria">Categoria:</label>
                        <select name="categoria" class="form-control" style="width: 520px;">
                            <option value="">Selecione uma Categoria...</option>
                            <option value="PS4">PS4</option>
                            <option value="XBOX-ONE">XBOX ONE</option>
                            <option value="SWITCH">Nintendo Switch</option>
                            <option value="TABULEIRO">Tabuleiro</option>
                            <option value="PC">PC</option>
                        </select>
                        <c:if test="${not empty erroCategoria}">
                            <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                        </c:if>
                    </div> 
                </div>

                <div class="divBotao">
                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                    <a href="/DevBros/menu.jsp"><button type="button" class="btn btn-info">Cancelar</button></a>
            </form>
        </div>
    </div>
</div>


</body>
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
</html>