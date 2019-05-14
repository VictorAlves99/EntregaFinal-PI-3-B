<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Venda de produtos</title>
        <link href = "CSS/vendaProdutos.css" rel = "stylesheet" type = "text/css"/>
        <style>
            *{
                margin: 0px;
            }
            .button{
                height: 28px;
                width: 28px;
                padding: 0px;
            }
            .button img{
                height:22px; 
                width: 22px; 
                padding-top: 1px;
            }
        </style>

    </head>

    <body>
        <header>
            <div class="titulo">
                <img class="logo" src="https://i.imgur.com/1ayr6NR.png">
                <h1>Noobies</h1>
            </div>
        </header>
    <center>
        <h1>VENDA DE PRODUTOS</h1>
        <hr>
    </center>
    <div class="codigoprod">
        <form action="chambra" method="POST">
            <label class="codigo">Código do produto: </label><input class="codigo" type="text" name="cod_produto">
            <button class="ok">OK</button>
        </form>
    </div>
    <form action="" class = "conteudo">
        <div class="quantidade">
            <label class="cpf">CPF do cliente: </label><input class="cpfTxt" type="text" name="cpfcliente">&nbsp;&nbsp;&nbsp;
            <label>Quantidade: </label><input class="quantidadeTxt" type="text" name="qtd"></input>
            <label class="datavenda">Data de venda: </label><input class="dataTxt" type="date" name="dia"></input>
            <label class="filial">Filial: </label><input class="filialTxt" type="text" name="filialE" value="${funcionario.filial}" readonly></input>
        </div>

        <table class="tabela">
            <thead>
                <tr class="row">
                    <th class="codProd">CÓDIGO DO PRODUTO</th>
                    <th class="nome">NOME DO PRODUTO</th>
                    <th class="categoria">CATEGORIA</th>
                    <th class="quantidadeProd">QUANTIDADE</th>
                    <th class="valor">VALOR UNITÁRIO</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaProdutos}" var="produto">
                    <tr class="conteudo">
                        <td><c:out value="${produto.codProduto}"/></td>
                        <td><c:out value="${produto.nomeProd}"/></td>
                        <td><c:out value="${produto.categoria}"/></td>
                        <td><c:out value="${produto.quantidade}"/></td>
                        <td><c:out value="${produto.valorVenda}"/></td>
                    </tr>
                </c:forEach> 
            </tbody>

            <div class="faixapgmto">
                <div class="pgmto"><h2>Total a pagar:</h2></div>
                <input class="pgtxt" type="text" name="pg"></input>
                <div class="formaspgmto">
                    <legend class="checkies">Formas de pagamento:</legend>
                    <input type="radio" name="pgto" value="1" /> <label>Dinheiro</label>
                    <input type="radio" name="pgto" value="2" /> <label>Débito</label>
                    <input type="radio" name="pgto" value="3" /> <label>Crédito</label>
                </div>
                <div class="botoes">
                    <button class="finalizar">FINALIZAR COMPRA</button>
                    <input type="reset" class="cancelar" value="CANCELAR COMPRA" />
                </div>
            </div>
        </table>
    </form>
</body>
</html>
