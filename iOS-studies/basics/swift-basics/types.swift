// em swift, nós temos alguns conjuntos de tipos de dados 

// inteiros
var idade: Int = 23

// no caso de plataformas de 32 bits, um inteiro vai ser Int32, e em 64 vai ser Int64.
// swift também nós provem o UInt, que é um inteiro sem sinal, ou seja, ele não pode ser negativo.

/* Use UInt somente quando você especificamente precisa de um tipo de inteiro sem sinal com o mesmo tamanho que o tipo de plataforma padrão.
Se isso não for o caso, Int é a melhor escolha, mesmo quando o valor a ser armazenado é conhecido como não negativo. 
Um tipo de inteiro sem sinal é sempre positivo, e a ausência de um sinal pode aumentar a capacidade de armazenamento do número em relação ao seu tipo de inteiro com sinal correspondente. */

var tamanhoPlataforma: UInt = 64

// ponto flutuante
// double representa um número de ponto flutuante de 64 bits.
// float representa um número de ponto flutuante de 32 bits.

var pi: Double = 3.14159
var altura: Float = 1.78

// swift é uma linguagem type safe, ou seja, ela não faz conversões automaticas de tipos de dados.
// para fazer conversões de tipos de dados, você pode usar o construtor do tipo de dado que você quer converter.

var idadeString: String = String(idade)
var alturaString: String = String(altura)
var piString: String = String(pi)

// booleans 
// em swift, o tipo de dado booleano é representado por Bool, e ele só pode ter dois valores, true ou false.

let isTrue: Bool = true
let isFalse: Bool = false

isTrue ? print("O valor é verdadeiro") : print("O valor é falso")
isFalse ? print("O valor é verdadeiro") : print("O valor é falso")

let c = 10
let d = 10

if (c == d) {
    print("c é igual a d")
} else {
    print("c é diferente de d")
}

let a = 10
let b = 5

(a == b) ? print("a é igual a b") : print("a é diferente de b")
(a != b) ? print("a é diferente de b") : print("a é igual a b")

// tuplas 
// tupla é um conjunto de valores unicos que podem ser de diferentes tipos.

let pessoa = (nome: "João", idade: 23, altura: 1.78)

print(pessoa.nome)

// você pode acessar os valores de uma tupla usando a posição do valor.
print(pessoa.2)

// exemplo prático de tupla
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error

print("O código do status é \(statusCode)")
print("A mensagem do status é \(statusMessage)")

// você pode ignorar valores de uma tupla usando o underline
let (justStatusCode, _) = http404Error
print("O código do status é \(justStatusCode)")

// optionals
// em swift, um optional é um tipo que pode ter um valor ou não ter um valor.

var nomeDoPet: String? = "Cachorro"

// para desempacotar um optional, você pode usar o operador de desempacotamento.
print(nomeDoPet!)

// você pode usar o optional binding para verificar se um optional tem um valor ou não.
if let nomeDoPet = nomeDoPet {
    print("O nome do pet é \(nomeDoPet)")
} else {
    print("O nome do pet não foi definido")
}

// você pode usar o operador de coalescência nula para fornecer um valor padrão para um optional.
let nomeDoPetPadrao = nomeDoPet ?? "Gato"
print("O nome do pet é \(nomeDoPetPadrao)")

// você pode usar o optional chaining para acessar propriedades de um optional.
let nomeDoPetMaiusculo = nomeDoPet?.uppercased()
print("O nome do pet em maiusculo é \(nomeDoPetMaiusculo ?? "Gato")")

// nil 
// nil é um valor especial que representa a ausência de um valor.

var nome: String? = nil

// fallback value

let nomePadrao = nome ?? "Matheus"
print("O nome é \(nomePadrao)")

// forçar desempacotamento
// você pode forçar o desempacotamento de um optional usando o operador de desempacotamento.
// se o optional não tiver um valor, o programa vai crashar.


