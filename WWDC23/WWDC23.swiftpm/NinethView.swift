//
//  NinethView.swift
//  WWDC23
//
//  Created by Luis Silva on 14/04/23.
//

import SwiftUI

struct NinethView: View {
    
    var body: some View {
        ZStack{
            Image("NinethView")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("""
Very good, Sophia is on the way to find her father. To continue, she needs to learn the spell that illuminate the place where she is. To get it answer right the following question.
                         
                         
                   


What is the value of x?

""")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 23))
                    Spacer()
                }
                .padding(.top, 80)
                
                
                
                
                
                Spacer()
                Button(action: {
                    
                }){
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.yellow)
                            .frame(width: 300, height: 70)
                        Text("Illuminate")
                            .font(.custom("TimesNewRomanPS-BoldMT", size: 60))
                            .foregroundColor(.black)
                    }
                    .padding(.top, -205)
                }
                
                
                Spacer()
                HStack{
                    NavigationLink(destination: TenthView().navigationBarBackButtonHidden(true)){
                        ZStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 14")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    
                    }

                    
                    
                    NavigationLink(destination: Wrong2().navigationBarBackButtonHidden(true)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 11")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    }
                    
                    
                    
                    NavigationLink(destination: Wrong2().navigationBarBackButtonHidden(true)){
                        ZStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 15")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    }
                }
                .padding(.top, 280)
                Spacer()
                
                
                
                
                
                NavigationLink(destination: Help2().navigationBarBackButtonHidden(true)){
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
                .padding(.top, -440)
            }
            

        }
    }
}

struct NinethView_Previews: PreviewProvider {
    static var previews: some View {
        NinethView()
    }
}
