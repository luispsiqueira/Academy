//
//  EighthSpriteSceneCode.swift
//  WWDC23
//
//  Created by Luis Silva on 17/04/23.
//

import Foundation
import SpriteKit
import SwiftUI

class EighthSpriteSceneCode: SKScene {
    
    @State private var next21 = false
    
    var sophia: SKSpriteNode?
    var wall: SKSpriteNode?
    var up: SKSpriteNode?
    var down: SKSpriteNode?
    var right: SKSpriteNode?
    var left: SKSpriteNode?

    
    override func didMove(to view: SKView) {
        sophia = childNode(withName: "Player") as? SKSpriteNode
        wall = childNode(withName: "Wall") as? SKSpriteNode
        up = childNode(withName: "Up") as? SKSpriteNode
        down = childNode(withName: "Down") as? SKSpriteNode
        right = childNode(withName: "Right") as? SKSpriteNode
        left = childNode(withName: "Left") as? SKSpriteNode
        
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
            
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        if sophia?.position.y ?? 0 > 50{
            NotificationCenter.default.post(name: Notification.Name("Next View 4"), object: nil)
        }
    }
}

    
