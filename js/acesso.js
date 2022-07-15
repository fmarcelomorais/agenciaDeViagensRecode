
const adm = {
    login: 'admin',
    senha: 123456
}

const $usuario = document.getElementById('usuario')
const $senha = document.getElementById('senha')
const $btnEntrar = document.getElementById('btnEntrar')

function login(e){
    e.preventDefault();
    
    if($usuario.value == adm.login && $senha.value == adm.senha){
        window.location.href = "sistema.html";
    }else{
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Login ou senha invalido!',
            footer: '<p>Login: admin | Senha: 123456</p>'
        })
        document.getElementById('usuario').value = "" 
        document.getElementById('senha').value = ""
    }

}

$btnEntrar.addEventListener('click', login)

