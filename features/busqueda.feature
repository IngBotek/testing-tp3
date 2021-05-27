#language: es
#encoding: utf-8

Característica: Busqueda de valores a partir de su clave

Antecedentes: 
    Dado una lista vacia

Escenario: Se busca un elemento a partir de su clave
    Cuando agrego la clave "clave" con el valor "valor"
    Entonces si busco la clave "clave" obtengo el valor "valor"

    