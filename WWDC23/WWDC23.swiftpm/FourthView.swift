//
//  FourthView.swift
//  WWDC23
//
//  Created by Luis Silva on 12/04/23.
//

import SwiftUI

struct FourthView: View {
    var body: some View {
        ZStack{
            Image("FourthView")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("Use the controllers to move Sophia through the woods.")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.title)
                    Spacer()
                }
                .padding(.top, 100)
                
                
                HStack{
                    Button(action: {
                        
                    }){
                        ZStack {
                            Spacer()
                            Image("Up")
                                .frame(width: 300, height: 100)
                            Spacer()
                            
                        }
                    }
                    .padding(.top, -30)
                }
                
                HStack{
                    Button(action: {
                        
                    }){
                        ZStack {
                            Spacer()
                            Image("Down")
                                .frame(width: 300, height: 100)
                            Spacer()
                            
                        }
                    }
                    .padding(.top, -30)
                }
                
                HStack{
                    Button(action: {
                        
                    }){
                        ZStack {
                            Spacer()
                            Image("Right")
                                .frame(width: 300, height: 100)
                            Spacer()
                            
                        }
                    }
                    .padding(.trailing, -95)
                    .padding(.top, -146)
                }
                
                HStack{
                    Button(action: {
                        
                    }){
                        ZStack {
                            Spacer()
                            Image("Left")
                                .frame(width: 300, height: 100)
                            Spacer()
                            
                        }
                    }
                    .padding(.trailing, 95)
                    .padding(.top, -156)
                }
                
                
                HStack{
                    Spacer()
                    Text("Furthermore, as you learn the spells, it will be appear on the screen a button with one word saying what that spell does, like that:  ")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.title)
                    Spacer()
                }
                .padding(.top, 0)
                
                
                
                
                
                Spacer()
                Button(action: {
                    
                }){
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: 300, height: 70)
                        Text("Reveal")
                            .font(.custom("TimesNewRomanPS-BoldMT", size: 60))
                            .foregroundColor(.black)
                    }
                    .padding(.top, -110)
                }
                
                
                
                HStack{
                    Spacer()
                    Text("That's it. Ready to start?")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.title)
                    Spacer()
                }
                .padding(.top, -50)
                
            
                

                NavigationLink(destination: FifthView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.green)
                            .frame(width: 120, height: 40)
                        Text("Let's go!")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .padding(.bottom, 100)
            }
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
