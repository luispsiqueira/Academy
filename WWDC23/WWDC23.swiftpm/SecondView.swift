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
                        Text("Hey there, this girl is named Sophia and recently she found out that she's a witch. \n \nOne day, some months ago, a man went to her house and told her this fact. He said that she has more power than the others because she can control an ancestral magic.\n \nHe also said that exists good and bad witches in the world and, now a days, one women became a dark witch. This one is named Elizabeth and she is coming after Sophia because of her power. \n \nShe started training with her father, but he was kidnapped by a guy that works for Elizabeth. So, she needs to go save her father, can you help on this journey?")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .padding(.top, 70)
                    
                    
                    
                    Spacer()
                    NavigationLink(destination: ThirdView()) {
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
