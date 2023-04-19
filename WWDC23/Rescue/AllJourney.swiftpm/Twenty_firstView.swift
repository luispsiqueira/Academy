//
//  Twenty_firstView.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI

struct Twenty_firstView: View {
    var body: some View {ZStack{
        Image("LastView")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            
        VStack{
            Spacer()
            Text("""
You did it!
Sophia has found her father and
saved him from the spiders
and Elizabeth. Now, they
will continue their fight,
and together they will be able
to defeat Elizabeth.

You want play again?
""")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .font(.title)
            Spacer()
        }
        .padding(.top, 250)
            
        
            
        VStack{
            NavigationLink(destination: StartView().navigationBarBackButtonHidden(true)) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray)
                        .frame(width: 160, height: 50)
                    Text("Play again")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.top, 650)
            }
        }
    }
}

struct Twenty_firstView_Previews: PreviewProvider {
    static var previews: some View {
        Twenty_firstView()
    }
}
