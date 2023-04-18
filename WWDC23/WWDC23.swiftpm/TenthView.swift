//
//  TenthView.swift
//  WWDC23
//
//  Created by Luis Silva on 16/04/23.
//

import SwiftUI

struct TenthView: View {
    var body: some View {
        ZStack{
            Image("FourthView")
                //.resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("Congrats, Sophia learn the spell!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 300)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.yellow)
                        .frame(width: 300, height: 70)
                    Text("Illuminate")
                        .font(.custom("TimesNewRomanPS-BoldMT", size: 60))
                        .foregroundColor(.black)
                }
                .padding(.top, 10)
                
                Spacer()
                NavigationLink(destination: EleventhView()) {
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

struct TenthView_Previews: PreviewProvider {
    static var previews: some View {
        TenthView()
    }
}
