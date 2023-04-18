//
//  ThirteenthView.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI

struct ThirteenthView: View {
    var body: some View {
        ZStack{
            Image("ThirteenthView")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("""
Excellent, Sophia is almost finding her father. The last spell she needs to learn is the one that unlock doors and gates. To get it, answer right the following question.




What is the value of x?
""")
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
                            .fill(Color.red)
                            .frame(width: 300, height: 70)
                        Text("Unlock")
                            .font(.custom("TimesNewRomanPS-BoldMT", size: 60))
                            .foregroundColor(.black)
                    }
                    .padding(.top, -195)
                }
                
                
                Spacer()
                HStack{
                    NavigationLink(destination: FourteenthView().navigationBarBackButtonHidden(true)){
                        ZStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 32")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    
                    }

                    
                    
                    NavigationLink(destination: Wrong3().navigationBarBackButtonHidden(true)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 12")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    }
                    
                    
                    
                    NavigationLink(destination: Wrong3().navigationBarBackButtonHidden(true)){
                        ZStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 24")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    }
                }
                .padding(.top, 240)
                Spacer()
                
                
                
                
                
                NavigationLink(destination: Help3().navigationBarBackButtonHidden(true)){
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
                //.padding(.trailing, 0)
                .padding(.top, -200)
            }
            

        }
    }
}

struct ThirteenthView_Previews: PreviewProvider {
    static var previews: some View {
        ThirteenthView()
    }
}
