//
//  StartView.swift
//  WWDC23
//
//  Created by Luis Silva on 12/04/23.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                Image("StartView")
                    //.resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    HStack{
                        Spacer()
                        Text("Nome do jogo")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .padding(.top, 250)
                    
                    
                    
                    Spacer()
                    NavigationLink(destination: SecondView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black)
                                .frame(width: 200, height: 50)
                            Text("Start")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    .padding(.bottom, 120)
                }
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
