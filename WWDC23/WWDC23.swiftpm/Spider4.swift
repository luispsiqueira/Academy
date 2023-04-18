//
//  Spider4.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI

struct Spider4: View {
    var body: some View {
        ZStack{
            Image("Spider1")
                //.resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("That's the wrong way! Careful with the spiders")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 280)
                
                
                Spacer()
                NavigationLink(destination: NineteenthView().navigationBarBackButtonHidden(true)){
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .frame(width: 200, height: 50)
                        Text("Try again")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .padding(.bottom, 100)
            }
        }
    }
}


struct Spider4_Previews: PreviewProvider {
    static var previews: some View {
        Spider4()
    }
}
