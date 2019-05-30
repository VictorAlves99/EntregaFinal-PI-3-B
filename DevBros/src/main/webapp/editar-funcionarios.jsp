<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar funcion�rios</title>
        <link href = "CSS/editar-funcionarios.css" rel = "stylesheet" type = "text/css"/>
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
                        <a class="dropdown-item" href="/DevBros/relatorio.jsp">Relat�rio</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>


    <div class="container">
        <div class="jumbotron">
            <div class="media border p-1">
                <img src="img/funcionario_icon.png" alt="Editar Funcion�rio" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                <div class="media-body">
                    <h4>Editar Funcion�rio</h4>   
                </div>
            </div>  

            <form action="editar" method="post">

                <div class="form-group">
                    <label for="id">Id:</label>
                    <input type="text" class="form-control" id="id" name="id" readonly value="${funcionario.getId()}">       
                </div>

                <div class="form-group">
                    <label for="id">Nome:</label>
                    <input type="text" class="form-control" id="nome" name="nome" readonly value="${funcionario.getNome()}">       
                </div>

                <div class="DropsFC">
                    <div  class="form-group" id="FilialCampo"> 
                        <label for="filiar" class="filial" >Filial: </label>
                        <select class="form-control" name="branch" required value="${funcionario.getFilial()}" style="width: 500px;">
                            <option value="${funcionario.getFilial()}" required>${funcionario.getFilial()}</option>
                            <option value="SP (MATRIZ)">SP (MATRIZ)</option>
                            <option value="Campina Grande">Campina Grande</option>
                            <option value="Joinville">Joinville</option>
                            <option value="Bras�lia">Bras�lia</option>
                        </select>
                    </div>        

                    <div class="form-group" id="CargoCampo">        
                        <label for="cargo" class="cargo">Cargo: </label>

                        <select class="form-control" name="typeoffice" required value="${funcionario.getCargo()}" style="width: 520px;">
                            <option value="${funcionario.getCargo()}" required>${funcionario.getCargo()}</option>
                            <option value="Diretor">Diretor</option>
                            <option value="Gerente global">Gerente global</option>
                            <option value="Gerente regional">Gerente regional</option>
                            <option value="Vendedor">Vendedor</option>
                            <option value="Funcion�rio">Funcion�rio</option>
                            <option value="Suporte t�cnico">Suporte t�cnico</option>
                        </select>
                    </div> 
                </div>

                <div class="UserPass">   
                    <div class="form-group" id="Usercampo">
                        <label for="User">Usu�rio:</label>
                        <input type="text" class="form-control" id="user" placeholder="Informe usu�rio" name="user" required value="${funcionario.getUsuario()}" style="width: 500px;">
                        <c:if test="${not empty erroUser}">
                            <div style="background-color: lightblue"><c:out value="${erroUser}" /></div>
                        </c:if>             
                    </div>

                    <div class="form-group" id="PassCampo">
                        <label for="Senha">Senha:</label>
                        <input type="password" class="form-control" id="pass" placeholder="Informe senha" name="pass" required value="${funcionario.getSenha()}" style="width: 520px;">
                        <c:if test="${not empty erroPass}">
                            <div style="background-color: lightblue"><c:out value="${erroPass}" /></div>
                        </c:if>             
                    </div>
                </div>      
                <div class="divBotao">
                    <button type="submit" class="btn btn-primary">Alterar</button>
                    <a href="/DevBros/lista"><button type="button" class="btn btn-info">Cancelar</button></a>  
                </div>
            </form>





        </div>
    </div>

</body>
</html>