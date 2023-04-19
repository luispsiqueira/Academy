//
//  StartView.swift
//  WWDC23
//
//  Created by Luis Silva on 12/04/23.
//

import SwiftUI
import AVFAudio

struct StartView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                Image("StartView")
                    //.resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    HStack{
                        Spacer()
                        Image("Rescue")
                        Spacer()
                    }
                    .padding(.top, 180)
                    
                    
                    
                    Spacer()
                    NavigationLink(destination: SecondView().navigationBarBackButtonHidden(true)) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black)
                                .frame(width: 200, height: 50)
                            Text("Start")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    .padding(.top, 400)
                    
                    Spacer()
                    Button(action: {
                        exit(0)
                    }){
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black)
                                .frame(width: 200, height: 50)
                            Text("Exit")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, 85)
                    }
                }
            }
            .onAppear{
                Music.y.playmusic(music: .music1, loops: -1)
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}



class Music {
    static let y = Music()
    
    var play: AVAudioPlayer?
    
    enum option: String {
        case music1
    }
    
    func playmusic(music: option, loops: Int = 0){
        guard let x = Bundle.main.url(forResource: music.rawValue, withExtension: "wav") else {
            return
        }
        
        do{
            play = try AVAudioPlayer(contentsOf: x)
            play?.numberOfLoops = loops
            play?.volume = 0.6
            play?.play()
        }
        catch _{
            print("Error")
        }
        
    }
}
