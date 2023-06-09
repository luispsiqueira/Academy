//
//  Wrong4.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI

struct Wrong4: View {
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
                NavigationLink(destination: SeventeenthView().navigationBarBackButtonHidden(true)) {
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

struct Wrong4_Previews: PreviewProvider {
    static var previews: some View {
        Wrong4()
    }
}
