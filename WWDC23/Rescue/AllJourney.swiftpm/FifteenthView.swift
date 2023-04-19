//
//  FifteenthView.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import SwiftUI
import SpriteKit

struct FifteenthView: View {
    
    let fifthSpriteScene = SKScene(fileNamed: "FifthSpriteScene")
    
    var body: some View {
        NavigationView{
            ZStack{
                if let fifthSpriteScene {
                    SpriteView(scene: fifthSpriteScene)
                        .ignoresSafeArea()
                }
                
            }
        }
    }
}

struct FifteenthView_Previews: PreviewProvider {
    static var previews: some View {
        FifteenthView()
    }
}
