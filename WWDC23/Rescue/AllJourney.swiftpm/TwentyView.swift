//
//  TwentyView.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI
import SpriteKit

struct TwentyView: View {
    
    @State private var next21 = false

    let eighthSpriteScene = SKScene(fileNamed: "EighthSpriteScene")
    
    var body: some View {
        NavigationView{
            ZStack{
                if let eighthSpriteScene {
                    SpriteView(scene: eighthSpriteScene)
                        .ignoresSafeArea()
                }

                if next21{
                    NavigationLink(destination: Twenty_firstView().navigationBarBackButtonHidden(true), isActive: $next21) {
                        EmptyView()
                    }
                    .hidden()
                }
                
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Next View 4"))) { _ in
                self.next21 = true
            }
        }
    }
}



struct TwentyView_Previews: PreviewProvider {
    static var previews: some View {
        TwentyView()
    }
}
