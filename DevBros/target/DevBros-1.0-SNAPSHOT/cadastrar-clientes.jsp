<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cadastro de clientes</title>
        <link rel="stylesheet" href="CSS/cadastro-clientes.css" type = "text/css">
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
<<<<<<< HEAD
                        <a class="dropdown-item" href="/DevBros/consultar-produtos.jsp">Consultar</a>
=======
                        <a class="dropdown-item" href="/DevBros/consultar">Consultar</a>
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
                    </div>
                </li>


                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Cliente</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/cadastrar-clientes.jsp">Cadastrar</a>
<<<<<<< HEAD
                        <a class="dropdown-item" href="/DevBros/consultar-clientes.jsp">Consultar</a>
=======
                        <a class="dropdown-item" href="/DevBros/consultarclientes">Consultar</a>
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
                    </div>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Funcionario</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/cadastrar-funcionarios.jsp">Cadastrar</a>
<<<<<<< HEAD
                        <a class="dropdown-item" href="/DevBros/listar-funcionarios.jsp">Consultar</a>
=======
                        <a class="dropdown-item" href="/DevBros/lista">Consultar</a>
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
                    </div>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Vendas
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/DevBros/vendas.jsp">Nova Venda</a>
                        <a class="dropdown-item" href="/DevBros/relatorio.jsp">Relat�rio</a>
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
<<<<<<< HEAD
                    <h4>Cliente</h4>   
=======
                    <h4>Novo Cliente</h4>   
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
                </div>
            </div>   

            <div class="formulario">
                <form action="CadastrarCliente" method="post">

                    <div class="form-group">
                        <label for="Nome">Nome:</label>
                        <input type="text" class="form-control" id="nome" placeholder="Informe seu nome completo" name="nome" required value="${cliente.nome}">
                        <c:if test="${not empty erroNome}">
                            <div style="background-color: lightblue"><c:out value="${erroNome}" /></div>
                        </c:if>             
                    </div>

                    <div class="form-group">
                        <label for="cpf">CPF:</label>
                        <input type="text" class="form-control" id="cpf" placeholder="Informe CPF (Somente n�meros)" name="cpf" required value="${cliente.cpf}">
                        <c:if test="${not empty erroCPF}">
                            <div style="background-color: lightblue"><c:out value="${erroCPF}" /></div>
                        </c:if>
                    </div>


                    <div class="form-group">
                        <label for="Telefone">Telefone:</label>
<<<<<<< HEAD
                        <input type="text" class="form-control" id="Telefone" placeholder="Informe Celular (Somente n�meros)" name="Telefone" required value="${cliente.telefone}">
=======
                        <input type="text" class="form-control" id="Telefone" placeholder="Informe Celular (eSomente n�meros)" name="Telefone" required value="${cliente.telefone}">
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
                        <c:if test="${not empty erroTelefone}">
                            <div style="background-color: lightblue"><c:out value="${erroTelefone}" /></div>
                        </c:if>
                    </div>


                    <div class="form-group">
                        <label for="Email">Email:</label>
                        <input type="email" class="form-control" id="Email" placeholder="Informe Email principal" name="email" required value="${cliente.email}">              
                        <c:if test="${not empty erroEmail}">
                            <div style="background-color: lightblue"><c:out value="${erroEmail}" /></div>
                        </c:if>
                    </div>

                    <div class="divBotao">
                        <button type="submit" class="btn  btn-primary">Cadastrar</button>
<<<<<<< HEAD
                        <a href="/DevBros/index.jsp"><button type="button" class="btn btn-info">Cancelar</button></a>
                    </div>

                </form>
            </div>
        </div>
    </div>
=======
                        <a href="/DevBros/menu.jsp"><button type="button" class="btn btn-info">Cancelar</button></a>
                </form>
            </div>


        </div>
    </div>
</div>
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
</body>
</html>
