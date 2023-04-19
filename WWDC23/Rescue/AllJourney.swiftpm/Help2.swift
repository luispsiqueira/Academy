//
//  Help2.swift
//  WWDC23
//
//  Created by Luis Silva on 16/04/23.
//

import SwiftUI

struct Help2: View {
    var body: some View {
        ZStack{
            Image("Help2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("You can see that the the number on the right side of the arrow is the double of the number on the left:")
                        .foregroundColor(.white)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 130)
                
                VStack{
                    Spacer()
                    Text("Therefore, there is only one correct option to sequence ")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(.title))
                    
                    Text("the stack:\nx = 7 * 2\nx = 14")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(.title))
                    Spacer()
                }
                .padding(.top, 200)
                
        
                Spacer()
                NavigationLink(destination: NinethView().navigationBarBackButtonHidden(true)) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .frame(width: 200, height: 50)
                        Text("Understood")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .padding(.bottom, 60)
            }
        }
    }
}

struct Help2_Previews: PreviewProvider {
    static var previews: some View {
        Help2()
    }
}
