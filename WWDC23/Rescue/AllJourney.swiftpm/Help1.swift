//
//  Help1.swift
//  WWDC23
//
//  Created by Luis Silva on 13/04/23.
//

import SwiftUI

struct Help1: View {
    var body: some View {
        ZStack{
            Image("Help1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("You can see that as it goes down the stack, it adds two:")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 120)
                
                HStack{
                    Spacer()
                    Text("Therefore, there is only one correct option to sequence the stack: \n\nx = 10")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 400)
                
        
                Spacer()
                NavigationLink(destination: FifthView().navigationBarBackButtonHidden(true)) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .frame(width: 200, height: 50)
                        Text("Understood")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .padding(.bottom, 100)
            }
        }
    }
}

struct Help1_Previews: PreviewProvider {
    static var previews: some View {
        Help1()
    }
}
