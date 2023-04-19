//
//  SixthView.swift
//  WWDC23
//
//  Created by Luis Silva on 13/04/23.
//

import SwiftUI

struct SixthView: View {
    var body: some View {
        ZStack{
            Image("FourthView")
                //.resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("Congrats, Sophia learn the spell! \n\n\n\n\n Try press the button of the spell on the next \nscreen to see what happen.")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 200)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: 300, height: 70)
                    Text("Reveal")
                        .font(.custom("TimesNewRomanPS-BoldMT", size: 60))
                        .foregroundColor(.black)
                }
                .padding(.top, -300)
                
                Spacer()
                NavigationLink(destination: SeventhView().navigationBarBackButtonHidden(true)) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .frame(width: 200, height: 50)
                        Text("Continue")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .padding(.bottom, 100)
            }
        }
    }
}

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
    }
}
