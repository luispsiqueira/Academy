import UIKit



class Pessoa {
    var nome: String
    //var mochila : Mochila
    
    init(nome: String, //mochila: Mochila
    ) {
        self.nome = nome
        //self.mochila = mochila
    }
}


class Pokemon {
    var nome: String
    var vida: Int
    var ataque: Int
    var defesa: Int
    
    init(nome: String, vida: Int, ataque: Int, defesa: Int){
        self.nome = nome
        self.vida = vida
        self.ataque = ataque
        self.defesa = defesa
    }
}


class Mundo{
    var tamanhoX: Int
    var tamanhoY: Int
    
    init(tamanhoX: Int, tamanhoY: Int){
        self.tamanhoX = tamanhoX
        self.tamanhoY = tamanhoY
    }
}


class Mochila {
    var  pokemons = [Pokemon]()
    
}

print("Bem vinda(o) ao Pokemon")
print("Para começarmos, digite seu nome: ")
var nome = readLine()
var bag = Mochila()
var player = Pessoa(nome: nome)

print(player.nome)



