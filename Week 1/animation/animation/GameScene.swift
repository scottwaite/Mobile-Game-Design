//
//  GameScene.swift
//  animation
//
//  Created by Scott Waite on 7/23/15.
//  Copyright (c) 2015 Scott Waite. All rights reserved.
//

import UIKit
import SpriteKit


class ShooterScene: SKScene {
    var score = 0
    var enemyCount = 10
    var shooterAnimation = [SKTexture]()
    
    //View loads
    override func didMoveToView(view: SKView) {
        self.initShooterScene()
    }
    
    //Set up level
    func initShooterScene(){
        let shooterAtlas = SKTexture(named: "shooter")
        
        for index in 1...shooterAtlas.textureNames.count {
            let imgName = String(format: "shooter%01d", idex)
            shooterAnimation += [shooterAtlas.textureNamed(imgName)]
        }
    }
    
    //Animate the shooter
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let shooterNode = self.childNodeWithName("shooterNode")
        
        if(shooterNode != nil) {
            let animation = SKAction.animateWithTextures(shooterAnimation, timePerFrame: 0.1)
            shooterNode?.runAction(animation)
        }
    }
}