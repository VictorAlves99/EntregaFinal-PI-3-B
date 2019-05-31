<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Produto</title>
<<<<<<< HEAD
        <link href="CSS/editar-produtos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <div>
                <a href="/DevBros/menu.jsp"><img src="img/logo-simple.png"/></a>
                <h1>Noobies</h1>
            </div>
        </header>
        <br>
        <center><h1>Alterar Produto</h1></center>
        <br>
        <hr>
        <div>
            <form action="EditarProduto" method="post">
                <div class="divDescricao">
                    <p>ID do Produto:</p>
                </div>
                <div class="divDescricaoTxtArea">
                    <input value="${codProduto}" name="codProduto" type="text" readonly>
                    <c:if test="${not empty erroDescricao}">
                        <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                    </c:if>
                </div>
                <div class="divNome">
                    <p>Nome do Produto:</p>
                </div>
                <div class="divNomeInput">
                    <input value="${nomeProd}" name="nomeProd" type="text" required>
                    <c:if test="${not empty erroNome}">
                        <div style="background-color: lightcoral"><c:out value="${erroNome}" /></div>
                    </c:if>
                </div>

                <div class="divValorCV">
                    <p>Valor de Compra:</p>
                    <p>Valor de venda:</p>
                </div>
                <div class="divValoresInput">
                    <input value="${valorCompra}" name="valorCompra" type="text" required>
                    <c:if test="${not empty erroValorCompra}">
                        <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                    </c:if>                    
                    <input value="${valorVenda}" name="valorVenda" type="text" required>
                    <c:if test="${not empty erroValorVenda}">
                        <div style="background-color: lightcoral"><c:out value="${erroDescricao}" /></div>
                    </c:if>
                </div>
                    <div class="divQTDCAT" id="divQTDCAT">
                    <p>Quantidade:</p>
                    <p>Categoria:</p>
                </div>
                <div class="divQTDCATInput" id="divQTDCATInput">
                    <input value="${quantidade}" name="quantidade" type="text" required>
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
                    <button type="reset">Limpar</button>
                    <button type="submit">Atualizar</button>
            </form>
        </div>
    </body>
=======

        <meta name="viewport" content="width=device-width, initial-scale=1">
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
                <img src="img/produto_novo_2.png" alt="Editar Produto" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                <div class="media-body">
                    <h4>Editar Produto</h4>   
                </div>
            </div>       

            <form action="EditarProduto" method="post">

                <div class="form-group">
                    <label for="codProduto">Código Produto:</label>
                    <input type="text" class="form-control" name="codProduto" readonly value="${codProduto}">     
                </div>    

                <div class="form-group">
                    <label for="Nome">Produto:</label>
                    <input type="text" class="form-control" id="nome" placeholder="Informe Produto" name="nomeProd" required value="${nomeProd}">
                    <c:if test="${not empty erroNome}">
                        <div style="background-color: lightblue"><c:out value="${erroNome}"/></div>
                    </c:if>
                </div>

                <div class="DivValores">

                    <div class="form-group" id="ValordaCompraform">
                        <label for="valorCompra">Valor da Compra:</label>
                        <input type="text" class="form-control" id="valorCompra" placeholder="Informe valor da Compra" name="valorCompra" required value="${valorCompra}" style="width: 400px;">
                        <c:if test="${not empty erroValorCompra}">
                            <div style="background-color: lightblue"><c:out value="${erroValorCompra}" /></div>
                        </c:if>

                    </div>

                    <div class="form-group" id="ValordaVendaform">
                        <label for="valorVenda">Valor da Venda:</label>
                        <input type="text" class="form-control" id="valorVenda" placeholder="Informe valor da Venda" name="valorVenda" required value="${valorVenda}" style="width: 520px;">
                        <c:if test="${not empty erroValorVenda}">
                            <div style="background-color: lightblue"><c:out value="${erroValorVenda}" /></div>
                        </c:if>
                    </div>
                </div>

                <div class="DivQtdCat">
                    <div class="form-group" id="QuantidadeProd">
                        <label for="quantidade">Quantidade:</label>
                        <input type="text" class="form-control" id="quantidade" placeholder="Informe Quantidade" name="quantidade" required  value="${quantidade}" style="width: 500px;">
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
                            <div style="background-color: lightblue"><c:out value="${erroDescricao}" /></div>
                        </c:if>
                    </div> 
                </div>

                <div class="divBotao">
                    <button type="submit" class="btn btn-primary">Alterar</button>
                    <a href="/DevBros/consultar"><button type="button" class="btn btn-info">Cancelar</button></a>
                </div>
            </form>
        </div>
    </div>

</body>
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
</html>
