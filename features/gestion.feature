#language: es
#encoding: utf-8

Característica: Gestionar las parejas almacenadas en la lista

Antecedentes: 
    Dado una lista vacia

Escenario: Verificar el estado de una lista vacia   
    Entonces la lista tiene 0 elemento almacenado
    Y si busco la clave "clave" no obtengo ningun valor
    
Escenario: Agregar un elemento a una lista vacia
    Cuando agrego la clave "clave" con el valor "valor"
    Entonces la lista tiene 1 elemento almacenado

Esquema del escenario: Agregar datos a una lista vacia
    Cuando agrego la clave "<clave>" con el valor <valor>
    Entonces la lista tiene 1 elemento almacenado
    Y si busco la clave "<clave>" obtengo el valor <valor>
    Ejemplos:
    | clave  | valor |
    | letras | abced |
    | numero |   7   |

Escenario: Busca un elemento en una lista con datos
    Dado una lista con los siguientes elementos
    | clave    | valor |
    | "letras" | abced |
    | "numero" |   7   |
    Entonces la lista tiene 2 elemento almacenado

Escenario: Si queremos modificar el valor de un elemento en una lista con datos
    Dado una lista vacia
    Cuando agrego la clave "<clave>" con el valor <valor>
    Cuando agrego la clave "<clave>" con el valor <value>
    Entonces la lista tiene 1 elemento almacenado 
    
Escenario: eliminamos un elemento en una lista con datos
    Dado una lista vacia
    Cuando agrego la clave "<clave>" con el valor <valor>
    Cuando elimino el elemento a partir de su "clave"
    Entonces la lista tiene 0 elemento almacenado 