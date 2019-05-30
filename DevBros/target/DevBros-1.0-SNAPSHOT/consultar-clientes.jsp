<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
<<<<<<< HEAD
        <title>Consulta de Clientes</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/cadastro-clientes.css" type = "text/css">
=======

        <title>Consulta de Clientes</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/consultar-clientes.css" type = "text/css">
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
<<<<<<< HEAD
        
       <nav class="navbar navbar-expand-sm  bg-light ">
=======

        <nav class="navbar navbar-expand-sm  bg-light ">
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
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
<<<<<<< HEAD
        
        
        <div class="input-group mb-3">
          <form action="pesquisaCliente" method="post">  
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-append">
      <button class="btn btn-success" type="submit">Go</button>  
      </form>
     </div>
  </div>

             
        <div class="formulario">
            <form action="CadastrarCliente" method="post">

<div class="pesquisaExc">
                <h4>Pesquisa</h4>
                <form action="pesquisaCliente" method="post">
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
                                    <th class="tcodCliente">ID</th>
                                    <th class="tcpf">CPF</th> 
                                    <th class="tnome">NOME</th>                                  
                                    <th class="ttelefone">TELEFONE</th>
                                    <th class="temail">E-MAIL</th>
                                    <th class="tacoes">A��ES</th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listaClientes}" var="cliente" >
                                    <tr class="linhaSec">
                                        <td><c:out value="${cliente.codCliente}"/></td>
                                        <td><c:out value="${cliente.cpf}" /></td>  
                                        <td><c:out value="${cliente.nome}"/></td>        
                                        <td><c:out value="${cliente.telefone}" /></td>
                                        <td><c:out value="${cliente.email}" /></td>
                                        <td>
                                            
                                           <a class="ancora" href="editarcliente?codCliente=${cliente.codCliente}">                                   
                                            <button class="edit">EDITAR</button>
                                            </a>
                                            <a class="ancora" href="excluirCliente?codCliente=<c:out value='${cliente.codCliente}'/>">Deletar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>


        <div>
        <form action="pesquisaCliente" method="post">
            <input type="text" name="pesquisa">
            <c:if test="${not empty erroPesquisa}">
                <div style="background-color: lightcoral"><c:out value="${erroPesquisa}" /></div>
            </c:if>
            <button class="buttonBusca"/>BUSCAR</button>
        </form><img src="img/lupa.png" style="width:20px;">


<input type="text" class="form-control" placeholder="Search" name="pesquisa">




<div class="container">    
        <table class="table">
=======
    <div class="container mt-3">
        <div class="topoPesquisa">
            <div  class="headerPesquisa">
            <h4>Pesquisa</h4>  
            </div>
            <div class="headerPesquisaNovo">
                <button type="button" class="btn btn-success"><a class="ancora" href="/DevBros/cadastrar-clientes.jsp">+ Novo</a></button>
            </div>
        </div>
      
        <form action="pesquisaCliente" method="post"> 
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
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
            <thead>                     
                <tr class="linhaPrinc">
                    <th class="tcodCliente">Id</th>
                    <th class="tcpf">CPF</th> 
                    <th class="tnome">Nome</th>                                  
                    <th class="ttelefone">Telefone</th>
                    <th class="temail">E-mail</th>
                    <th class="tacoes">A��es</th>
                </tr>                        
            </thead>
            <tbody>
                <c:forEach items="${listaClientes}" var="cliente" >
                    <tr class="linhaSec">
                        <td><c:out value="${cliente.codCliente}"/></td>
                        <td><c:out value="${cliente.nome}" /></td>  
                        <td><c:out value="${cliente.cpf}" /></td>        
                        <td><c:out value="${cliente.telefone}" /></td>
                        <td><c:out value="${cliente.email}" /></td>
                        <td>
<<<<<<< HEAD

                            <a class="ancora" href="editarcliente?codCliente=${cliente.codCliente}">                                   
                                <button class="edit">EDITAR</button></a>
                            <a class="ancora" href="excluirCliente?codCliente=<c:out value='${cliente.codCliente}'/>">Deletar</a>
=======
                            <a class="ancora" href="editarcliente?codCliente=${cliente.codCliente}"><button class="btn btn-warning">Editar</button></a>
                            <a class="ancora" href="excluirCliente?codCliente=<c:out value='${cliente.codCliente}'/>"><button class="btn btn-danger">Deletar</button></a>
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
                        </td>
                    </tr>
                </c:forEach>                    
            </tbody>
        </table>
<<<<<<< HEAD
  

=======
    </div>
    </div>     
>>>>>>> 95c528ce53c7607e7cb36353a839a3d6ebd6a585
</body>
</html>