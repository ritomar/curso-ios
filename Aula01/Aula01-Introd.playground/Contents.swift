import UIKit

// Uma variável com tipo inferido Double.
var mutableValue = 27.05

// Uma variável com tipo explícito Float.
var mutableFloat: Float = 19.92

// Variáveis podem ser livremente modificadas, desde que matenham o tipo inicial.
mutableValue = 30.05

// Criando uma constante, cujo valro não pode ser modificado após a atribuição
let immutableVariable = true
let immutableString: String = "String"



let namelessTuple = (1, "bc")
print(namelessTuple.0)

// Podemos dar nome aos valores
let tuple = (testing: 1.23, tuples: "Works", awesome: true)
// .. e acessá-los por sua respectiva nomenclatura.
print(tuple.tuples)



// Valores que podem não existir em algum momento devem ser marcados como optional.
var emptyValue: String?
print(emptyValue)

var maybeValye: String? = "I'm here!"
print(maybeValye!)

// Optional binding permite o desempacotamento e atribuição em um único comando, reduzindo o esforço.
if let theValue = emptyValue {
    print(theValue)
}

emptyValue = "Let's Rock!"
if let theValue = emptyValue {
    print(theValue)
}



let anIntArray = [1, 2, 3]
var emptyArray = [Double]()
var fullArray = [String](count: 2, repeatedValue: "Default")

//Adicionando...
fullArray.append("Beyond default")
fullArray[1] = "Must be inside bounds"

//Removendo...
fullArray.removeAtIndex(2)
fullArray.removeLast()

fullArray.removeAll(keepCapacity: false)


// Dicionários são similares aos arrays, mas acessam os valores através de chaves.
var anStringDictWithStringKeys = [String:String]()

// Para atribuir um valor, basta atribuí-lo a uma chave.
anStringDictWithStringKeys["Key"] = "Value!"
anStringDictWithStringKeys["Another"] = "Cool!"

// Removendo...
anStringDictWithStringKeys["Key"] = nil
anStringDictWithStringKeys.removeValueForKey("Another")

// Constante: não pode ser alterados após sua inicialização.
let immutableDictionary = ["Never" : "Changes"]



let objects = ["Hey", "Brother"]

// Em listas, iteramos normalmente com for in.
for object in objects {
    print("Object is \(object)")
}

// Podemos obter o índice de cada objeto com o uso de tuplas e da função enumerate().
for (index, object) in objects.enumerate() {
    print("Object at index \(index) is \(object)")
}

// Neste for, estaremos iterando de 0 à 9. O operador ..< define um intervalo exclusivo.
for i in 0..<10 {
    print(i)
}

// Para incluirmos todos os valores, utilizamos o operador ... Nesse caso, iremos de 0 à 5, iterando 6 vezes.
for i in 0...5 {
    print(i)
}


let vegetable = "red pepper"

// Switch permite o direcionamento do código para determinados comandos.
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisings and make ants on a log."
    fallthrough
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
// Podemos utilizar cláusulas mais complexas
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}
