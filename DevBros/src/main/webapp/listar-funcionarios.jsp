<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Consulta de funcionários</title>
        <link rel = "stylesheet" href = "CSS/consultar-funcionarios.css" type = "text/css"/>
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
                <button type="button" class="btn btn-success"><a class="ancora" href="/DevBros/cadastrar-funcionarios.jsp">+ Novo</a></button>
            </div>
        </div>

        <form action="pesquisarFuncionario" method="post">
            <div class="input-group mb-3">
            <input class="form-control" type="text" name="pesquisa" id="pesquisa" placeholder="Search">    
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
            <tr>
                <th class="tid">Id</th>
                <th class="tnome">Nome</th>
                <th class="tcpf">CPF</th>
                <th class="trg">RG</th>
                <th class="tfilial">Filial</th>
                <th class="tcargo">Cargo</th>
                <th class="tacoes">Ações</th>
              </tr>
        </thead>
        <tbody id="body">
            
           <c:forEach items="${listaFuncionarios}" var="funcionario">
                <tr class="conteudo">
                    <td><c:out value="${funcionario.id}"/></td>
                    <td><c:out value="${funcionario.nome}"/></td>
                    <td><c:out value="${funcionario.cpf}"/></td>
                    <td><c:out value="${funcionario.rg}"/></td>
                    <td><c:out value="${funcionario.filial}"/></td>
                    <td><c:out value="${funcionario.cargo}"/></td>
                    <td>
                        <a class="ancora" href="editar?id=${funcionario.id}">                                   
                            <button class="btn btn-warning">Editar</button>
                        </a>
                        <a class="ancora" href="desativar?id=${funcionario.id}">
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
</html>