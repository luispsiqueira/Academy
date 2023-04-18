//
//  TwelfthView.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI
import SpriteKit

struct TwelfthView: View {
    
    @State private var next13 = false
    @State private var spider02 = false
        
    let fourthSpriteScene = SKScene(fileNamed: "FourthSpriteScene")
        
    var body: some View {
        NavigationView{
            ZStack{
                if let fourthSpriteScene {
                    SpriteView(scene: fourthSpriteScene)
                        .ignoresSafeArea()
                }

                if next13{
                    NavigationLink(destination: ThirteenthView(), isActive: $next13) {
                        EmptyView()
                    }
                    .hidden()
                }
                
                if spider02{
                    NavigationLink(destination: Spider2(), isActive: $spider02) {
                        EmptyView()
                    }
                    .hidden()
                }
                
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Next View 2"))) { _ in
                self.next13 = true
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Spider02"))) { _ in
                self.spider02 = true
            }
        }
    }
}



struct TwelfthView_Previews: PreviewProvider {
    static var previews: some View {
        TwelfthView()
    }
}
