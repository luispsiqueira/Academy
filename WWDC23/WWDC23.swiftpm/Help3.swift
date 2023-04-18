//
//  Help3.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI

struct Help3: View {
    var body: some View {
        ZStack{
            Image("Help3")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("You can see that the the number on the right side of the arrow is the multiplication of the numbers on the left, that are separated by a comma:")
                        .foregroundColor(.white)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 100)
                
                VStack{
                    Spacer()
                    Text("Therefore, there is only one correct option to sequence ")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(.title))
                    
                    Text("the staque\nx = 4 * 8\nx = 32")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(.title))
                    Spacer()
                }
                .padding(.top, 200)
                
        
                Spacer()
                NavigationLink(destination: ThirteenthView()) {
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

struct Help3_Previews: PreviewProvider {
    static var previews: some View {
        Help3()
    }
}
