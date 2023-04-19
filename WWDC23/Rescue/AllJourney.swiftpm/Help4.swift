//
//  Help4.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI

struct Help4: View {
    var body: some View {
        ZStack{
            Image("Help4")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("You can see that the the number on the right side of the arrow is the sum of squares of the numbers on the left, that are separated by a comma:")
                        .foregroundColor(.white)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.top, 80)
                
                VStack{
                    Spacer()
                    Text("Therefore, there is only one correct option to sequence ")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(.title))
                    
                    Text("the staque\n\nx = (4 * 4) + (3 * 3) \nx = 25")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(.title))
                    Spacer()
                }
                .padding(.top, 150)
                
        
                Spacer()
                NavigationLink(destination: SeventeenthView().navigationBarBackButtonHidden(true)) {
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

struct Help4_Previews: PreviewProvider {
    static var previews: some View {
        Help4()
    }
}
