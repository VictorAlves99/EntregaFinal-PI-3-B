<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/index.css" type="text/css">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">      
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>   
        <title>Labs Login</title>
        <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    </head>
    <body>

        <nav class="navbar navbar-expand-sm  bg-light ">
            <a class="navbar-brand" href="/DevBros/index.jsp">
                <img src="img/logo-simple.png" alt="Logo" style="width:50px;">
            </a>
        </nav>

        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <center><img src="img/logo.png"></center>

                    </div>

                    <div class="card-body">

                        <form>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><img src="img/iconUser.png"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="username">

                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><img src="img/iconKey.png"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control" placeholder="password">
                            </div>

                            <div class="form-group">
                                <input type="submit" value="Login" class="btn float-right btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>



        <footer>
            <nav class="navbar navbar-expand-sm  bg-light">
                <a class="navbar-brand" href="/DevBros/index.jsp">
                    <img src="img/devbros.png" alt="Logo" style="width:80px;">
                </a>

            </nav>
    </body>

</html>
