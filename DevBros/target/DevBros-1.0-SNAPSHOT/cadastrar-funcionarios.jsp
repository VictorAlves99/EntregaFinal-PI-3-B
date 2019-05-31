<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cadastrar funcionários</title>
<<<<<<< HEAD
        <link href = "CSS/cadastro-funcionarios.css" rel = "stylesheet" type = "text/css"/>
    </head>
    <body>
        <header>
            <div class="titulo">
                <a href="/DevBros/menu.jsp"><img src="https://i.imgur.com/1ayr6NR.png"/></a>
                <h1>Noobies</h1>
            </div>
        </header>
        <center>
            <h1>CADASTRO DE FUNCIONÁRIOS</h1>
            <hr>
        </center>
    <form action="funcionario" method="post">
        <div class="formulario">
            <div>
                <label>Usuário: </label>
                <input class="usuario" type="text" name="user" required value="${funcionario.user}">
                
            </div>
            <br>
            <div>
                <label>Senha: </label>
                <input class="senha" type="password" name="pass" required value="${funcionario.pass}">

            </div>
            <br>
            <div>
                <label>Nome: </label>
                <input class="nome" type="text" name="name" required value="${funcionario.name}">

            </div>
            <br>
            <div>
                <label class = "cpf">CPF: </label>
                <input class = "cpf" type="text" name="CPF" required value="${funcionario.CPF}">

            </div>
            <br>
            <div>
                <label>RG: </label>
                <input class="rg" type="text" name="RG" required value="${funcionario.RG}">
                

                <label class = "datanasc">Data de nascimento: </label>
                <input type="date" name="datebirth" required value="${funcionario.datebirth}">
            </div>
            <br>
            <div>                
                <label class="filial">Filial: </label>
<!--                <input type="text" name="branch" required value="${funcionario.branch}">-->
                <select class="filial" name="branch" required value="${funcionario.branch}">
                  <option value="Nenhum">Selecionar...</option>
                  <option value="SP (MATRIZ)">SP (MATRIZ)</option>
                  <option value="Campina Grande">Campina Grande</option>
                  <option value="Joinville">Joinville</option>
                  <option value="Brasília">Brasília</option>
                </select>
                
                <label class = "cargo">Cargo: </label>
<!--                <input type="text" name="typeoffice" required value="${funcionario.typeoffice}">-->
                <select class="opcoes" name="typeoffice" required value="${funcionario.typeoffice}">
                  <option value="Nenhum">Selecionar...</option>
                  <option value="Diretor">Diretor</option>
                  <option value="Gerente global">Gerente global</option>
                  <option value="Gerente regional">Gerente regional</option>
                  <option value="Vendedor">Vendedor</option>
                  <option value="Funcionário">Funcionário</option>
                  <option value="Suporte técnico">Suporte técnico</option>
                </select>
            </div>
            <br>
            <button class="cadastrar" type="submit">CADASTRAR</button>
        </div>
    </form>    
=======
        <link rel="stylesheet" href="CSS/cadastro-funcionario.css" type="text/css">
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
                        <a class="dropdown-item" href="/DevBros/relatorio.jsp">Relatório</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    
    
    <div class="container">
        <div class="jumbotron">
            <div class="media border p-1">
                <img src="img/funcionario_icon.png" alt="Novo Funcionário" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                <div class="media-body">
                    <h4>Novo Funcionário</h4>   
                </div>
            </div>   
            
        
    <form action="funcionario" method="post">
        
        
        <div class="form-group">
                        <label for="Nome">Nome:</label>
                        <input type="text" class="form-control" id="name" placeholder="Informe nome completo" name="name" required value="${funcionario.name}">
                        <c:if test="${not empty erroNome}">
                            <div style="background-color: lightblue"><c:out value="${erroNome}" /></div>
                        </c:if>             
                    </div>
                        
                        
            
        <div class="CpfRG">
            <div class="form-group" id="CPFCampo">
                        <label for="CPF">CPF:</label>
                        <input type="text" class="form-control" id="CPF" placeholder="Informe CPF(Somente números)" name="CPF" required value="${funcionario.CPF}" style="width: 500px;">
                        <c:if test="${not empty erroCPF}">
                            <div style="background-color: lightblue"><c:out value="${erroCPF}" /></div>
                        </c:if>             
                    </div>
            
              
            <div class="form-group" id="RGCampo">
                        <label for="RG">RG:</label>
                        <input type="text" class="form-control" id="rg" placeholder="Informe RG(Somente números)" name="RG" required value="${funcionario.RG}" style="width: 520px;">
                        <c:if test="${not empty erroRG}">
                            <div style="background-color: lightblue"><c:out value="${erroRG}" /></div>
                        </c:if>             
                    </div>                       
        </div>
                        
                <div class="form-group"  id="datebirth">
                        <label for="datebirth">Data de Nascimento:</label>
                        <input type="date" class="form-control" id="datebirth" placeholder="Informe" name="datebirth" required value="${funcionario.datebirth}">
                        <c:if test="${not empty errodatebirth}">
                            <div style="background-color: lightblue"><c:out value="${errodatebirth}" /></div>
                        </c:if>             
                    </div>                   
                        
       
        
             


                        <div class="DropsFC">
                            <div  class="form-group" id="FilialCampo"> 
                                <label for="filiar" class="filial">Filial: </label>
                                <select class="form-control" name="branch" required value="${funcionario.branch}" style="width: 500px;">
                                    <option value="Nenhum">Selecionar...</option>
                                    <option value="SP (MATRIZ)">SP (MATRIZ)</option>
                                    <option value="Campina Grande">Campina Grande</option>
                                    <option value="Joinville">Joinville</option>
                                    <option value="Brasília">Brasília</option>
                                </select>
                            </div>        

                                    <div class="form-group" id="CargoCampo">        
                                <label for="cargo" class="cargo">Cargo: </label>
                                <select class="form-control" name="typeoffice" required value="${funcionario.typeoffice}" style="width: 520px;">
                                    <option value="Nenhum">Selecionar...</option>
                                    <option value="Diretor">Diretor</option>
                                    <option value="Gerente global">Gerente global</option>
                                    <option value="Gerente regional">Gerente regional</option>
                                    <option value="Vendedor">Vendedor</option>
                                    <option value="Funcionário">Funcionário</option>
                                    <option value="Suporte técnico">Suporte técnico</option>
                                </select>
                            </div> 
                        </div> 
                                    
                                    
        <div class="UserPass">   
            <div class="form-group" id="Usercampo">
                <label for="User">Usuário:</label>
                <input type="text" class="form-control" id="user" placeholder="Informe usuário" name="user" required value="${funcionario.user}" style="width: 500px;">
                <c:if test="${not empty erroUser}">
                    <div style="background-color: lightblue"><c:out value="${erroUser}" /></div>
                </c:if>             
            </div>

            <div class="form-group" id="PassCampo">
                <label for="Senha">Senha:</label>
                <input type="password" class="form-control" id="pass" placeholder="Informe senha" name="pass" required value="${funcionario.pass}" style="width: 520px;">
                <c:if test="${not empty erroPass}">
                    <div style="background-color: lightblue"><c:out value="${erroPass}" /></div>
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
                  
                  
           
                  
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
    </body>
</html>
