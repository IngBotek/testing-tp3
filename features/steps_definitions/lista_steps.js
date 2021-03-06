const{Before, Given, When, Then} = require('@cucumber/cucumber')
const expect = require("chai").expect;
const Lista = require("../../src/lista.js")

let contexto ={}; //Donde vamos poniendo las cosas en las clausulas given

Given('una lista vacia', function() {
    contexto.lista = new Lista();
});

Given('una lista con los siguientes elementos', function (vector) {
    vector = vector.rawTable;
    contexto.lista = new Lista();
    for(var indice = 1; indice < vector.length; indice++) {
        contexto.lista.add(vector[indice][0], vector[indice][1]);
    }
});

When ('agrego la clave {string} con el valor {}', function(clave,valor){
    contexto.lista.add(clave,valor);
});

When ('elimino el elemento a partir de su {string}',function(clave){
    contexto.lista.delete(clave);
})

Then ('la lista tiene {int} elemento(s) almacenado(s)', function(cantidad){
    expect(contexto.lista.count()).to.be.equal(cantidad);
});

Then ('si busco la clave {string} no obtengo ningun valor', function(clave){
    expect(contexto.lista.find(clave)).to.be.NaN;
});

Then('si busco la clave {string} obtengo el valor {}', function (clave, valor) {
    expect(contexto.lista.find(clave)).to.be.equal(valor);
});

Then('la clave es un string',function(){
    expect(contexto.lista.add("clave","valor")).to.be.equal(true);
})

Then('obtengo una lista ordenada {string} {string}', function(clave1,clave2){
    expect(contexto.lista.showClave()).to.be.deep.equal([clave1 , clave2]);
})

