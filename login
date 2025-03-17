<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login e Cadastro</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: sans-serif;
        }
        
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient(45deg, #7367f0, #43a047);
        }
        
        .container {
            position: relative;
            width: 800px;
            height: 400px;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .form-container {
            position: absolute;
            top: 0;
            width: 50%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 30px;
            transition: all 0.5s;
        }
        
        .login-container {
            left: 0;
        }
        
        .signup-container {
            left: 50%;
            opacity: 0;
        }
        
        .info-container {
            position: absolute;
            top: 0;
            left: 50%;
            width: 50%;
            height: 100%;
            background: linear-gradient(45deg, #7367f0, #43a047);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: #fff;
            text-align: center;
            padding: 30px;
            transition: all 0.5s;
        }
        
        h1 {
            margin-bottom: 20px;
        }
        
        p {
            margin-bottom: 15px;
        }
        
        input {
            width: 100%;
            padding: 10px 0;
            margin-bottom: 15px;
            border: none;
            border-bottom: 1px solid #ddd;
            outline: none;
            font-size: 15px;
        }
        
        button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: #7367f0;
            color: #fff;
            cursor: pointer;
            margin-top: 5px;
        }
        
        .toggle-btn {
            background: transparent;
            border: 1px solid #fff;
            margin-top: 15px;
        }
        
        .container.active .login-container {
            opacity: 0;
        }
        
        .container.active .signup-container {
            transform: translateX(-100%);
            opacity: 1;
        }
        
        .container.active .info-container {
            transform: translateX(-100%);
        }
        
        @media (max-width: 768px) {
            .container {
                width: 90%;
                height: auto;
            }
            
            .form-container {
                width: 100%;
                position: relative;
            }
            
            .login-container {
                display: block;
            }
            
            .signup-container {
                display: none;
                left: 0;
            }
            
            .info-container {
                display: none;
            }
            
            .container.active .login-container {
                display: none;
            }
            
            .container.active .signup-container {
                display: block;
                transform: none;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container login-container">
            <h1>Login</h1>
            <input type="email" placeholder="E-mail" required>
            <input type="password" placeholder="Senha" required>
            <a href="#" style="color: #7367f0; font-size: 14px; text-align: right; text-decoration: none; margin-bottom: 10px;">Esqueceu a senha?</a>
            <button>Entrar</button>
        </div>
        
        <div class="form-container signup-container">
            <h1>Cadastro</h1>
            <input type="text" placeholder="Nome" required>
            <input type="email" placeholder="E-mail" required>
            <input type="password" placeholder="Senha" required>
            <input type="password" placeholder="Confirmar senha" required>
            <button>Cadastrar</button>
        </div>
        
        <div class="info-container">
            <div id="login-info">
                <h1>Bem-vindo</h1>
                <p>Não tem uma conta?</p>
                <button class="toggle-btn" id="show-signup">Criar conta</button>
            </div>
            <div id="signup-info" style="display: none;">
                <h1>Olá</h1>
                <p>Já tem uma conta?</p>
                <button class="toggle-btn" id="show-login">Fazer login</button>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('show-signup').addEventListener('click', function() {
            document.querySelector('.container').classList.add('active');
            document.getElementById('login-info').style.display = 'none';
            document.getElementById('signup-info').style.display = 'block';
        });

        document.getElementById('show-login').addEventListener('click', function() {
            document.querySelector('.container').classList.remove('active');
            document.getElementById('login-info').style.display = 'block';
            document.getElementById('signup-info').style.display = 'none';
        });
    </script>
</body>
</html>
