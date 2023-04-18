//
//  main.swift
//  Pokemon
//
//  Created by Luis Silva on 21/03/23.
//

import Foundation


class Pessoa {
    var nome: String
    var mochila : Mochila
    
    init(nome: String, mochila: Mochila) {
        self.nome = nome
        self.mochila = mochila
    }
}


class Pokemon {
    var nome: String
    var vida: Int
    var ataque: Int
    var defesa: Int
    var tipo: String
    
    init(nome: String, vida: Int, ataque: Int, defesa: Int, tipo: String){
        self.nome = nome
        self.vida = vida
        self.ataque = ataque
        self.defesa = defesa
        self.tipo = tipo
    }
}

class Posicao {
    var x: Int
    var y: Int
    var poke: Pokemon
    
    init(x: Int, y: Int, poke: Pokemon){
        self.x = x
        self.y = y
        self.poke = poke
    }
}


class Mundo{
    var tamanhoX: Int
    var tamanhoY: Int
    var posicoes = [Posicao]()
    
    init(tamanhoX: Int, tamanhoY: Int){
        self.tamanhoX = tamanhoX
        self.tamanhoY = tamanhoY
    }
}


class Mochila {
    var  pokemons = [Pokemon]()
}



// inicializa o mundo, colocando as coordenadas e pokemon nulo em cada casa
let mundo = Mundo(tamanhoX: 20, tamanhoY: 20)
let pnulo = Pokemon(nome: "nulo", vida: 0, ataque: 0, defesa: 0, tipo: "nenhum")
for i in 0...(mundo.tamanhoX - 1){
    for j in 0...(mundo.tamanhoY - 1){
        let pos = Posicao(x: i, y: j, poke: pnulo)
        mundo.posicoes += [pos]
    }
}


//cria uma plalinha com sete tipos de pokemons para depois coloca-los aleatoriamente no mada
var planilha = [Pokemon]()
let p1 = Pokemon(nome: "Pidgey", vida: 5, ataque: 5, defesa: 6, tipo: "Normal")
let p2 = Pokemon(nome: "Rattata", vida: 5, ataque: 4, defesa: 7, tipo: "Normal")
let p3 = Pokemon(nome: "Zubat", vida: 5, ataque: 3, defesa: 5, tipo: "Tóxico")
let p4 = Pokemon(nome: "Eevee", vida: 10, ataque: 12, defesa: 8, tipo: "Normal")
let p5 = Pokemon(nome: "Rhydon", vida: 30, ataque: 9, defesa: 11, tipo: "Pedra")
let p6 = Pokemon(nome: "Growlithe", vida: 20, ataque: 20, defesa: 12, tipo: "Fogo")
let p7 = Pokemon(nome: "Snorlax", vida: 40, ataque: 20, defesa: 13, tipo: "Normal")
for _ in 0...4{
    planilha += [p1]
    planilha += [p2]
    planilha += [p3]
    planilha += [p4]
    planilha += [p5]
}
for _ in 0...3{
    planilha += [p6]
}
planilha += [p7]


// espalha 30 pokemons no mapa, em lugares diferentes
var n = 0
while n < 30{
    let a = Int.random(in: 0..<mundo.tamanhoX)
    let b = Int.random(in: 0..<mundo.tamanhoY)
    var ponto: Int = 0
    for d in 0...((mundo.tamanhoX - 1) * (mundo.tamanhoY - 1)){
        if a == mundo.posicoes[d].x && b == mundo.posicoes[d].y{
            ponto = d
        }
    }
    if mundo.posicoes[ponto].poke.nome == "nulo"{
        mundo.posicoes[ponto].poke = planilha[n]
        n += 1
    }
}



//funcoes que serao utilizadas

//le um numero de entrada do player
func lerEntrada() -> Int {
    let xx = readLine()
    if xx?.e_numero == true{
        let x = Int(xx!)!
        return x
    }
    else {
        return 0
    }
}
extension String {
    var e_numero: Bool{
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}


//funcao que verifica se tem um pokemon naquela poiscao do mapa
func verificar (_ a: Int, _ b: Int) {
    var ponto: Int = 0
    for d in 0...((mundo.tamanhoX - 1) * (mundo.tamanhoY - 1)){
        if a == mundo.posicoes[d].x && b == mundo.posicoes[d].y{
            ponto = d
        }
    }
    if mundo.posicoes[ponto].poke.nome != "nulo"{
        batalha(ponto)
    }
}


// funcao que realiza a batalha entre o player e um pokemon encontrado
func batalha(_ ponto: Int) {
    let k = mundo.posicoes[ponto].poke.vida
    
    let mensagem3 = """
    
    ***
    Você encontrou um Pokemon.
    Se prepare que a batalha vai começar.
    Você possui dois escudos para essa batalha.
    
    """
    print(mensagem3)
    
    print("O Pokemon encontrado foi o \(mundo.posicoes[ponto].poke.nome): vida \(mundo.posicoes[ponto].poke.vida), ataque \(mundo.posicoes[ponto].poke.ataque), defesa \(mundo.posicoes[ponto].poke.defesa), tipo \(mundo.posicoes[ponto].poke.tipo)")
    
    let mensagem4 = """
    
    -------------------------------------------------
    Sua vez de se movimentar, deseja atacar ou usar um escudo?
    1 - atacar.
    2 - usar escudo.
    3 - sair da batalha.
    """
    var sair: Int = 0
    while(sair == 0){
        print(mensagem4)
        var x: Int = lerEntrada()
        var escudos: Int = 2
        if x == 1{
            if player.mochila.pokemons[0].ataque > mundo.posicoes[ponto].poke.defesa{
                mundo.posicoes[ponto].poke.vida = mundo.posicoes[ponto].poke.vida - player.mochila.pokemons[0].ataque + mundo.posicoes[ponto].poke.defesa
            }
            
            if mundo.posicoes[ponto].poke.vida < 0{
                mundo.posicoes[ponto].poke.vida = 0
            }
            print("A vida do \(mundo.posicoes[ponto].poke.nome) é de: \(mundo.posicoes[ponto].poke.vida)")
            if(mundo.posicoes[ponto].poke.vida <= 0){
                let mensagem5 = """
                Parabéns, você venceu a batalha!
                Deseja capturar o Pokemon?
                1 - Sim
                2 - Não
                
                """
                print(mensagem5)
                let v: Int = lerEntrada()
                if v == 1{
                    mundo.posicoes[ponto].poke.vida = 50
                    player.mochila.pokemons += [mundo.posicoes[ponto].poke]
                    print("Muito bom, o Pokemon foi capturado e se encontra na sua mochila!")
                }
                mundo.posicoes[ponto].poke = pnulo
                sair = 1
                x = 4
            }
        } else if x == 2 && escudos > 0 {
            print("Você se protegeu do ataque do \(mundo.posicoes[ponto].poke.nome)")
            escudos -= 1
            x = 4
        } else if x == 3 {
            sair = 1
        } else {
            print("Não entendi o que quis fazer, tente de novo")
            x = 4
        }
        
        if x == 1 || x == 2 {
            print("Se prepare, ai vem o ataque do \(mundo.posicoes[ponto].poke.nome)")
            if player.mochila.pokemons[0].defesa < mundo.posicoes[ponto].poke.ataque{
                player.mochila.pokemons[0].vida = player.mochila.pokemons[0].vida - mundo.posicoes[ponto].poke.ataque + player.mochila.pokemons[0].defesa
            }
            
            if(player.mochila.pokemons[0].vida < 0){
                player.mochila.pokemons[0].vida = 0
            }
            print("A vida do \(player.mochila.pokemons[0].nome) é de:  \(player.mochila.pokemons[0].vida)")
            if(player.mochila.pokemons[0].vida <= 0){
                let mensagem5 = """
                Você perdeu a batalha!
                Tente de novo mais tarde.
                
                """
                print(mensagem5)
                player.mochila.pokemons[0].vida = 50
                mundo.posicoes[ponto].poke.vida = k
                sair = 1
            }
        }
    }
}



// funcao de configuracoes
func config(){
    let mensagem6 = """
    
    ----- Mochila -----
    Você possui esses Pokemons:
    """
    
    let mensagem7 = """
    -------------------
    """
    
    print(mensagem6)
    
    let n: Int = player.mochila.pokemons.count
    for i in 0..<n{
        print("\(i + 1) - \(player.mochila.pokemons[i].nome), vida: \(player.mochila.pokemons[i].vida), ataque: \(player.mochila.pokemons[i].ataque), defesa: \(player.mochila.pokemons[i].defesa), tipo: \(player.mochila.pokemons[i].tipo)")
    }
    print(mensagem7)
    let mensagem8 = """
    Seu Pokemon principal, o que vai para as batalhas é o \(player.mochila.pokemons[0].nome), caso queira mudar, digite o número referente ao Pokemon que se tornará o principal. Ou difite '0'para retornar.
    """
    print(mensagem8)
    
    let x: Int = lerEntrada()
    
    if x > 0 && x <= player.mochila.pokemons.count{
        let p: Pokemon = player.mochila.pokemons[0]
        player.mochila.pokemons[0] = player.mochila.pokemons[x - 1]
        player.mochila.pokemons[x - 1] = p
    }
    
    
    return
}


// funcao principal que mostra ao usuario todas as opcoes que ele tem no jogo
func menu(_ a: Int, _ b: Int) {
    print("")
    print("")
    print("Voce se encontra na posição x: \(a) / y: \(b)!")
    print("O mapa vai de 0 a \(mundo.tamanhoX - 1) em x; e de 0 a \(mundo.tamanhoY - 1) em y.")
    let mensagem2 = """
Para onde deseja ir?
1 -> frente
2 -> direita
3 -> atrás
4 -> esquerda
5 -> Pokemon principal
6 -> sair do jogo
Digite o valor:
"""
    print(mensagem2)
    
    x = lerEntrada()
    
    if x == 1{
        if a - 1 >= 0 {
            verificar(a - 1, b)
            menu(a - 1, b)
        } else {
            print("")
            print("*Atenção*")
            print("Fora do mapa! Não é possível ir para essa posição. Tente de novo")
            menu(a,b)
        }
    } else if x == 2 {
        if b + 1 < mundo.tamanhoY {
            verificar(a, b + 1)
            menu(a, b + 1)
        }else {
            print("")
            print("*Atenção*")
            print("Fora do mapa! Não é possível ir para essa posição. Tente de novo")
            menu(a,b)
        }
    } else if x == 3 {
        if a + 1 < mundo.tamanhoX {
            verificar(a + 1, b)
            menu(a + 1, b)
        }else {
            print("")
            print("*Atenção*")
            print("Fora do mapa! Não é possível ir para essa posição. Tente de novo")
            menu(a,b)
        }
    } else if x == 4 {
        if b - 1 >= 0 {
            verificar(a, b - 1)
            menu(a, b - 1)
        }else {
            print("")
            print("*Atenção*")
            print("Fora do mapa! Não é possível ir para essa posição. Tente de novo")
            menu(a,b)
        }
    } else if x == 5 {
        config()
        menu(a,b)
    } else if x == 6 {
        sair()
    } else {
        print("Não entendi o que quis fazer, tente de novo")
        menu(a,b)
    }
    
}


// funcao que finaliza e sai do jogo
func sair(){
    print("Obrigado por jogar, até a próxima!")
    print("")
}


//
//
//só por questao de organização, deixando as funções separadas do inicio do jogo
//
//

// inicio do jogo
// main
print("Bem vinda(o) ao Pokemon")
print("Para começarmos, digite seu nome: ")
let nome1 = readLine()
var bag = Mochila()
var player = Pessoa(nome: nome1!, mochila: bag)

print("")
print("Muito bem, \(player.nome)! Escolha o Pokemon com que deseja jogar: ")

let bulbasaur = Pokemon(nome: "Bulbasaur", vida: 18, ataque: 10, defesa: 10, tipo: "Planta")
let squirtle = Pokemon(nome: "Squirtle", vida: 18, ataque: 10, defesa: 10, tipo: "Água")
let charmander = Pokemon(nome: "Charmander", vida: 18, ataque: 10, defesa: 10, tipo: "Fogo")

print("1 - \(bulbasaur.nome): pokemon do tipo \(bulbasaur.tipo)")
print("2 - \(squirtle.nome): pokemon do tipo \(squirtle.tipo)")
print("3 - \(charmander.nome): pokemon do tipo \(charmander.tipo)")
print("Todos esses possuem 18 de vida, 10 de ataque e 10 de defesa")
print("Digite o número do Pokemon que deseja: ")

var x = lerEntrada()
while  x != 1 && x != 2 && x != 3 {
    print("Não entendi o que quis fazer, tente de novo")
    x = lerEntrada()
}
if x == 1 {
    player.mochila.pokemons += [bulbasaur]
}
if x == 2 {
    player.mochila.pokemons += [squirtle]
}
if x == 3 {
    player.mochila.pokemons += [charmander]
}

print("")
print("Parabéns, você adquiriu um novo pokemon: \(player.mochila.pokemons[0].nome)")

let menseagem1 = """
O jogo consiste em você andar pelo mapa e capturando os Pokemons que aparecerem na sua frente. Use os comandos de locomoção para se deslocar pelo mapa. Quando se deparar com um Pokemon, o jogo indicará o nome dele e a quantidade de vida que possui. Caso queira captura-lo, basta vence-lo em batalha antes que ele fuja.
Boa sorte e bom jogo!

"""
print(menseagem1)

menu(10,10)
