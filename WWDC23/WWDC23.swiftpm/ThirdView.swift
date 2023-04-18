//
//  ThirdView.swift
//  WWDC23
//
//  Created by Luis Silva on 12/04/23.
//

import SwiftUI

struct ThirdView: View {
    
    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    var body: some View {
        ZStack{
            Image("ThirdView")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("Her father is arrested in the woods that spiders inhabit. She needs to go walking through the woods, but you need to be careful because she can not cross with the spiders\n and she also can't pass where there are trees. \n\n\n\n\n\n\nBesides that, she needs to learn some spells to go through the woods. For that, you need to succeed a math logic challenge. You also can use the help button if you need it.")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                    Spacer()
                }
                .padding(.top, 80)
                
                
                
                Spacer()
                Button(action: {
                    
                }){
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 300, height: 100)
                        Circle()
                            .fill(Color.black)
                            .frame(width: 300, height: 96)
                        Text("?")
                            .font(.system(size: 70))
                            .foregroundColor(.white)
                    }
                }
                
                
                
                Spacer()
                NavigationLink(destination: FourthView().navigationBarBackButtonHidden(true)) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.green)
                            .frame(width: 120, height: 50)
                        Text("Continue")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .padding(.bottom, 90)
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
















