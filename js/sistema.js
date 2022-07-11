const $url = document.getElementById('url')
const $titulo = document.getElementById('titulo')
const $descricao = document.getElementById('descricao')
const $btnCadDestino = document.getElementById('btnCadDestino')

const destinos = []

function cadastrarDestino(e){
    e.preventDefault();
    
    const destino = {
        titulo: $titulo.value,
        descricao: $descricao.value,
        url: $url.value
    }

    destinos.push(destino)
        
    localStorage.setItem('chave', JSON.stringify(destinos))

    document.getElementById('url').value = ""
    document.getElementById('titulo').value = ""
    document.getElementById('descricao').value = ""

}

$btnCadDestino.addEventListener('click', cadastrarDestino)

function destinosCadastrados(){ 

    let html = ''
    const destinos = JSON.parse(localStorage.getItem('chave'))

    destinos.map(e => {
        html +=
        `
     <div class="card" style="width: 18rem;">
        <img src="${e.url}" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">${e.titulo}</h5>
          <p class="card-text">${e.descricao}</p>
          <a href="#" class="btn btn-primary">Esse lugar te espera</a>
        </div>
      </div> `   
    });

    document.getElementById('box-destinos').innerHTML = html
    
}