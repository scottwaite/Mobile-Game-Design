//
//  GameScene.swift
//  Ninja Escape
//
//  Created by Scott Waite on 7/10/15.
//  Copyright (c) 2015 Scott Waite. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var playSoundEffect = SKAction.playSoundFileNamed("background_music.caf", waitForCompletion: true)
            self.runAction(playSoundEffect)
    }
    

}
