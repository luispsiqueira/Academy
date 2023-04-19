//
//  SecondView.swift
//  WWDC23
//
//  Created by Luis Silva on 12/04/23.
//

import SwiftUI

struct SecondView: View {
    
    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    var body: some View {
            ZStack{
                Image("SecondView")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    HStack{
                        Spacer()
                        Text("Hey there, this girl is named Sophia and she's a witch and can control an ancestral magic.\n \nIn the world exists good and bad witches. Nowadays, a women became a dark witch, her name is Elizabeth and she is coming after Sophia because of her power. \n \nOne day, Sophia's father was kidnapped by this dark wirch. So, she needs to go save her father, can you help on this journey?")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .font(.title2)
                        Spacer()
                    }
                    .padding(.top, 70)
                    
                    
                    
                    Spacer()
                    NavigationLink(destination: ThirdView().navigationBarBackButtonHidden(true)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.green)
                                .frame(width: 100, height: 40)
                            Text("Sure")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    .padding(.bottom, 60)
                }
            }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
