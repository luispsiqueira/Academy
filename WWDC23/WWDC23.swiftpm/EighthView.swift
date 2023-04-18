//
//  EighthView.swift
//  WWDC23
//
//  Created by Luis Silva on 13/04/23.
//

import SwiftUI
import SpriteKit

struct EighthView: View {
    
    @State private var next9 = false
    @State private var spider01 = false
        
    let secondSpriteScene = SKScene(fileNamed: "SecondSpriteScene")
        
    var body: some View {
        NavigationView{
            ZStack{
                if let secondSpriteScene {
                    SpriteView(scene: secondSpriteScene)
                        .ignoresSafeArea()
                }

                if next9{
                    NavigationLink(destination: NinethView(), isActive: $next9) {
                        EmptyView()
                    }
                    .hidden()
                }
                
                if spider01{
                    NavigationLink(destination: Spider1(), isActive: $spider01) {
                        EmptyView()
                    }
                    .hidden()
                }
                
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Next View"))) { _ in
                self.next9 = true
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Spider01"))) { _ in
                self.spider01 = true
            }
        }
    }
}

struct EighthView_Previews: PreviewProvider {
    static var previews: some View {
        EighthView()
    }
}
