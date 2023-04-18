//
//  Wrong2.swift
//  WWDC23
//
//  Created by Luis Silva on 16/04/23.
//

import SwiftUI

struct Wrong2: View {
    var body: some View {
        ZStack{
            Image("FourthView")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("Unfortunately, that's wrong!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 350)
                
                
                
                Spacer()
                NavigationLink(destination: NinethView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                            .frame(width: 250, height: 75)
                        Text("Try again")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                    }
                }
                .padding(.bottom, 300)
            }
        }
    }
}

struct Wrong2_Previews: PreviewProvider {
    static var previews: some View {
        Wrong2()
    }
}
