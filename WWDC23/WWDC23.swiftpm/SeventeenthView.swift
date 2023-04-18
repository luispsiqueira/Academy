//
//  SeventeenthView.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI

struct SeventeenthView: View {
    var body: some View {
        ZStack{
            Image("SeventeenthView")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack{
                    Spacer()
                    Text("""
Final challenge!
The spell Attack gives to Sophia the possibility to take spiders of her way.
To get this spell, give the right answer for the following question.

  



What is the value of x?
""")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.title)
                    Spacer()
                }
                .padding(.top, 70)
                
                
                
                
                
                Spacer()
                Button(action: {
                    
                }){
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.green)
                            .frame(width: 300, height: 70)
                        Text("Attack")
                            .font(.custom("TimesNewRomanPS-BoldMT", size: 60))
                            .foregroundColor(.black)
                    }
                    .padding(.top, -260)
                }
                
                
                Spacer()
                HStack{
                    NavigationLink(destination: Wrong4()){
                        ZStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 12")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    
                    }

                    
                    
                    NavigationLink(destination: Wrong4()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 7")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    }
                    
                    
                    
                    NavigationLink(destination: EighteenthView()){
                        ZStack {
                            Spacer()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: 100, height: 40)
                            Text("x = 25")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                        }
                    }
                }
                .padding(.top, 100)
                Spacer()
                
                
                
                
                
                NavigationLink(destination: Help4()){
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
                .padding(.top, -460)
            }
            

        }
    }
}

struct SeventeenthView_Previews: PreviewProvider {
    static var previews: some View {
        SeventeenthView()
    }
}
