<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
        <link href="CSS/editar-clientes.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <div>
                <a href="/DevBros/index.jsp"><img src="img/logo-simple.png"/></a>
                <h1>Noobies</h1>
            </div>
        </header>
        <br>
        <center><h1>Alterar Cliente</h1></center>
        <br>
        <hr>
        <div>
            <form action="alterarcliente" method="post">
                <div>
                    <p>ID do Cliente:</p>
                </div>
                <div>
                    <input name="codCliente" type="text" readonly value="${cliente.getcodCliente()}"/>   
                </div>
                <div>
                    <p>Nome do Cliente:</p>
                </div>
                <div>
                    <input name="nome" type="text" value="${cliente.getNome()}">
                </div>
                    <br>
                    <div class="divCPF">
                    <label>CPF: </label>
                </div>
                <div class="divCPFInput">
                    <input class = "cpf" type="text" name="cpf" required value="${cliente.getCpf()}">
                    <c:if test="${not empty erroCPF}">
                        <div style="background-color: lightcoral"><c:out value="${erroCPF}" /></div>
                    </c:if>                
                </div>
                    <br>
                <div class="divTelefone">
                    <label>Telefone: </label>
                </div>
                <div class="divTelefoneInput">
                    <input class="telefone" type="text" name="fone" value="${cliente.getTelefone()}">
                    <c:if test="${not empty erroTelefone}">
                        <div style="background-color: lightcoral"><c:out value="${erroTelefone}" /></div>
                    </c:if>
                </div>
                <br>
                <div class="divEmail">
                     <label>E-mail: </label>
                </div>
                <div class="divEmailInput">
                    <input class="email" type="text" name="email" value="${cliente.getEmail()}">
                    <c:if test="${not empty erroEmail}">
                        <div style="background-color: lightcoral"><c:out value="${erroEmail}" /></div>
                    </c:if>
                </div>                   
                <br><br><br>
                <div class="divBotao">
                    <button type="submit">Alterar</button>
            </form>
        </div>
    </body>
</html>

