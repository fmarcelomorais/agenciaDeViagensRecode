const $url = document.getElementById('url')
const $titulo = document.getElementById('titulo')
const $descricao = document.getElementById('descricao')
const $btnCadDestino = document.getElementById('btnCadDestino')

const arrDestinos = []

function cadastrarDestino(e){
    e.preventDefault();
    if(!$url.value && !$titulo.value && !$descricao.value){
        alert("Campos não podem ficar em Branco")
    }else{

        const destino = {
            titulo: $titulo.value,
            descricao: $descricao.value,
            url: $url.value
        }

        arrDestinos.push(destino)
            
        localStorage.setItem('destinos', JSON.stringify(arrDestinos))

        alert("Destino cadastrado com sucesso!")

        document.getElementById('url').value = ""
        document.getElementById('titulo').value = ""
        document.getElementById('descricao').value = ""
    }

   

}

$btnCadDestino.addEventListener('click', cadastrarDestino)


function destinosCadastrados(){     
    const destinos = JSON.parse(localStorage.getItem('destinos'))

    let html = ''

    if(!destinos){
        html = `
            <div class="promocao">
            <h2>Nenhum Destino Cadastrado</h2>
            <h6>Cadastre destinos na área de <strong>Administrador</strong></h6>
            </div>
            `
        document.getElementById('box-destinos').innerHTML = html 

    }else{   

    destinos.map(e => {
        html +=
        `
     <div class="card" style="width: 18rem;">
        <img src="${e.url}" class="card-img-top" width="100" alt="ponto turistico">
        <div class="card-body">
          <h5 class="card-title">${e.titulo}</h5>
          <p class="card-text">${e.descricao}</p>
          <a href="#" class="btn btn-primary mt-1">Esse lugar te espera</a>
        </div>
      </div> `   
    });

    document.getElementById('box-destinos').innerHTML = html


}

    
    
}