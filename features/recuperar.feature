#language: es
#encoding: utf-8

Característica: Recuperar una lista ordenada con las claves

Antecedentes: 
    Dado una lista vacia

Escenario: Cuando se carga un elemento a una lista vacia
    Cuando agrego la clave "clave" con el valor "valor"
    Entonces la clave es un string

Escenario: Se carga un elemento al principio de la lista
    Cuando agrego la clave "clave" con el valor "valor"
    Cuando agrego la clave "auto" con el valor "fiat"
    Entonces obtengo una lista ordenada "auto" "clave"

Escenario: Se carga un elemento al final de la lista
    Cuando agrego la clave "clave" con el valor "valor"
    Cuando agrego la clave "zorro" con el valor "colorado"
    Entonces obtengo una lista ordenada "clave" "zorro"

    

