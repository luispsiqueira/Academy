//
//  SeventhView.swift
//  WWDC23
//
//  Created by Luis Silva on 13/04/23.
//



import SwiftUI
import SpriteKit

struct SeventhView: View {
    
    let firstSpriteScene = SKScene(fileNamed: "FirstSpriteScene")
    
    var body: some View {
        VStack{
            if let firstSpriteScene {
                SpriteView(scene: firstSpriteScene)
                    .ignoresSafeArea()
                
            }
            
        }
    }
}

struct SeventhView_Previews: PreviewProvider {
    static var previews: some View {
        SeventhView()
    }
}

