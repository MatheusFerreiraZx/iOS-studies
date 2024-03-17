// error handling em swift é feito usando o do-catch.

func chameFuncao() {
    do {
        try funcaoQuePodeLancarErro()
    } catch {
        print("Um erro ocorreu")
    }
}

// você pode usar o try? para converter o resultado de uma função que pode lançar um erro em um optional.

let resultado = try? funcaoQuePodeLancarErro()

// você pode usar o try! para forçar o resultado de uma função que pode lançar um erro.

let resultadoForcado = try! funcaoQuePodeLancarErro()

// throws é uma palavra-chave usada para indicar que uma função pode lançar um erro.

func funcaoQuePodeLancarErro() throws {
    throw Erro.Exemplo
}

// você pode criar um erro usando a enumeração Error.
enum Erro: Error {
    case Exemplo
}

// precondition é uma função usada para verificar se uma condição é verdadeira.

let idade = 18
precondition(idade >= 0, "A idade não pode ser negativa")

// fatalError é uma função usada para indicar que um erro inesperado ocorreu.

let nome = "João"
if nome.isEmpty {
    fatalError("O nome não pode ser vazio")
}

// você pode usar o defer para adiar a execução de um bloco de código até o final do escopo atual.

func exemploDefer() {
    defer {
        print("O código dentro do bloco defer é executado por último")
    }
    print("O código dentro da função exemploDefer é executado primeiro")
}