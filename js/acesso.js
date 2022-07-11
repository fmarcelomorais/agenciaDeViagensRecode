
const adm = {
    login: 'admin',
    senha: 123456
}

const $usuario = document.getElementById('usuario')
const $senha = document.getElementById('senha')
const $btnEntrar = document.getElementById('btnEntrar')

function login(e){
    e.preventDefault();
    
    if($usuario.value == adm.login && $senha.value == adm.senha)
        window.location.href = "sistema.html";
    else
        window.location.href = "login.html";  

}

$btnEntrar.addEventListener('click', login)

