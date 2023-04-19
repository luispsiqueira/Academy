//
//  SixteenthView.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI
import SpriteKit

struct SixteenthView: View {
    
    @State private var next17 = false
    @State private var spider03 = false

    let sixthSpriteScene = SKScene(fileNamed: "SixthSpriteScene")
        
    var body: some View {
        NavigationView{
            ZStack{
                if let sixthSpriteScene {
                    SpriteView(scene: sixthSpriteScene)
                        .ignoresSafeArea()
                }

                if next17{
                    NavigationLink(destination: SeventeenthView().navigationBarBackButtonHidden(true), isActive: $next17) {
                        EmptyView()
                    }
                    .hidden()
                }
                
                if spider03{
                    NavigationLink(destination: Spider3().navigationBarBackButtonHidden(true), isActive: $spider03) {
                        EmptyView()
                    }
                    .hidden()
                }
                
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Next View 3"))) { _ in
                self.next17 = true
            }
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Spider03"))) { _ in
                self.spider03 = true
            }
        }
    }
}



struct SixteenthView_Previews: PreviewProvider {
    static var previews: some View {
        SixteenthView()
    }
}
