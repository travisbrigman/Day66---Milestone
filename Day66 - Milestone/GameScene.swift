//
//  GameScene.swift
//  Day66 - Milestone
//
//  Created by Travis Brigman on 7/5/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    
    override func didMove(to view: SKView) {
         backGroundTessellator(xPixels: 1024, yPixels: 768)
        
        let curtainLeft = SKSpriteNode(imageNamed: "curtain")
        curtainLeft.position = CGPoint(x: 100, y: 390)
        curtainLeft.blendMode = .alpha
        curtainLeft.setScale(1.8)
        curtainLeft.zPosition = -4
        addChild(curtainLeft)
        
        let curtainRight = SKSpriteNode(imageNamed: "curtain")
        curtainRight.position = CGPoint(x: 935, y: 390)
        curtainRight.blendMode = .alpha
        curtainRight.yScale = 1.8
        curtainRight.xScale = -1.8
        
        addChild(curtainRight)
        
        
    }
    
    func backGroundTessellator(xPixels: Int, yPixels: Int) {
        let rows = xPixels / 256
        let columns = yPixels / 256
        
        for bg in 0...rows {
            for i in 0...columns {
            let background = SKSpriteNode(imageNamed: "bg_wood")
            background.position = CGPoint(x: 0 + (bg * 256), y: 0 + (i * 256))
            background.blendMode = .replace
            background.zPosition = -5
            addChild(background)
            }
        }
    }
    
    
    /*
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
 */
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
