//
//  ContentView.swift
//  OpenSession
//
//  Created by Luis Silva on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "tortoise")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            //da pra acrescentar novas icones e outras coisas indo no mais no canto superior direito
            Gauge(value: 0.8, in: /*@START_MENU_TOKEN@*/0...1/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
            }
            .foregroundColor(.red)
            .tint(.red)
            
            //da pra modificar selecionando e modificando na barra da direita
            Text("Hello, world!")
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
            //selecionando e indo em add modifier podemos achar mais modificacoes
            Text("Hello, world!")
        }
        .padding()
        
        .task{
            var catName1 = "Jorel"
            let catName2 = "Nina"
            let catName3 = "Frida Gahto"
            let catName4 = "Theodoro"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.preferredColorScheme(.dark)
    }
}
