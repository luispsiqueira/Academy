//
//  EleventhView.swift
//  WWDC23
//
//  Created by Luis Silva on 16/04/23.
//

import SwiftUI
import SpriteKit

struct EleventhView: View {
    
    @State private var spider02 = false
    
    let thirdSpriteScene = SKScene(fileNamed: "ThirdSpriteScene")
    
    var body: some View {
        NavigationView{
            ZStack{
                if let thirdSpriteScene {
                    SpriteView(scene: thirdSpriteScene)
                        .ignoresSafeArea()
                }
                
                if spider02{
                    NavigationLink(destination: Spider2().navigationBarBackButtonHidden(true), isActive: $spider02) {
                        EmptyView()
                    }
                    .hidden()
                }
                
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Spider02"))) { _ in
                self.spider02 = true
            }
        }
    }
}

struct EleventhView_Previews: PreviewProvider {
    static var previews: some View {
        EleventhView()
    }
}
