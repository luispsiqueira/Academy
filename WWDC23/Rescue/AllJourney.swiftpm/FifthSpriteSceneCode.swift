//
//  FifthSpriteSceneCode.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import Foundation
import SpriteKit
import SwiftUI

class FifthSpriteSceneCode: SKScene {

    var sophia: SKSpriteNode?
    var wall: SKSpriteNode?
    var up: SKSpriteNode?
    var down: SKSpriteNode?
    var right: SKSpriteNode?
    var left: SKSpriteNode?
    var revealbutton: SKSpriteNode?
    var illuminationbutton: SKSpriteNode?
    var unlockbutton: SKSpriteNode?
    
    
    override func didMove(to view: SKView) {
        sophia = childNode(withName: "Player") as? SKSpriteNode
        wall = childNode(withName: "Wall") as? SKSpriteNode
        up = childNode(withName: "Up") as? SKSpriteNode
        down = childNode(withName: "Down") as? SKSpriteNode
        right = childNode(withName: "Right") as? SKSpriteNode
        left = childNode(withName: "Left") as? SKSpriteNode
        revealbutton = childNode(withName: "Reveal") as? SKSpriteNode
        illuminationbutton = childNode(withName: "Illuminate") as? SKSpriteNode
        unlockbutton = childNode(withName: "Unlock") as? SKSpriteNode
        
        wall?.physicsBody?.categoryBitMask = 1
        sophia?.physicsBody?.collisionBitMask = 1
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in: self)
            let nodesA = self.nodes(at: location)
            if nodesA.first?.name == "Up" {
                self.sophia?.run(SKAction.moveBy(x: 0, y: 30, duration: 0.2))
            }
            if nodesA.first?.name == "Down" {
                self.sophia?.run(SKAction.moveBy(x: 0, y: -30, duration: 0.2))
            }
            
            if nodesA.first?.name == "Right" {
                self.sophia?.run(SKAction.moveBy(x: 30, y: 0, duration: 0.2))
            }
            
            if nodesA.first?.name == "Left" {
                self.sophia?.run(SKAction.moveBy(x: -30, y: 0, duration: 0.2))
            }
            
            if nodesA.first?.name == "Unlock" {
                buttonAction()

            }
            
            
        }
        
        
        func buttonAction() {
            self.removeAllChildren()
            if let skView = self.view {
                skView.presentScene(nil)

                let swiftUIView = SixteenthView()
                let hostingController = UIHostingController(rootView: swiftUIView)
                if let window = skView.window {
                    window.rootViewController = hostingController
                }
            }
        }
    }
}



    
 
