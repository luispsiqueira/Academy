//
//  NineteenthView.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI
import SpriteKit

struct NineteenthView: View {
    
    @State private var spider04 = false
    
    let seventhSpriteScene = SKScene(fileNamed: "SeventhSpriteScene")
    
    var body: some View {
        NavigationView{
            ZStack{
                if let seventhSpriteScene {
                    SpriteView(scene: seventhSpriteScene)
                        .ignoresSafeArea()
                }
                
                if spider04{
                    NavigationLink(destination: Spider4().navigationBarBackButtonHidden(true), isActive: $spider04) {
                        EmptyView()
                    }
                    .hidden()
                }
                
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Spider04"))) { _ in
                self.spider04 = true
            }
        }
    }
}

struct NineteenthView_Previews: PreviewProvider {
    static var previews: some View {
        NineteenthView()
    }
}
