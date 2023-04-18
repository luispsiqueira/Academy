//
//  FivethView.swift
//  WWDC23
//
//  Created by Luis Silva on 13/04/23.
//

import SwiftUI

struct FifthView: View {
    var body: some View {
        ZStack{
            Image("FivethView")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("To see if you understand, let's start with this challenge. If right, Sophia will learn the spell that reveal what is hidden.\n\n\n\nWhat number must complete the sequence?")
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
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: 300, height: 70)
                        Text("Reveal")
                            .font(.custom("TimesNewRomanPS-BoldMT", size: 60))
                            .foregroundColor(.black)
                    }
                    .padding(.top, -205)
                }
                
                
                Spacer()
                HStack{
                    NavigationLink(destination: Wrong1()){
                        ZStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 9")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    
                    }

                    
                    
                    NavigationLink(destination: SixthView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 10")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    }
                    
                    
                    
                    NavigationLink(destination: Wrong1()){
                        ZStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 11")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    }
                }
                .padding(.top, 280)
                Spacer()
                
                
                
                
                
                NavigationLink(destination: Help1()){
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 300, height: 70)
                        Circle()
                            .fill(Color.black)
                            .frame(width: 300, height: 66)
                        Text("?")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                    }
                }
                .padding(.trailing, -270)
                .padding(.top, -540)
            }
            

        }
    }
}

struct FivethView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
