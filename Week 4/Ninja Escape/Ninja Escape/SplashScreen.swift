//
//  SplashScreen.swift
//  Ninja Escape
//
//  Created by Scott Waite on 7/30/15.
//  Copyright (c) 2015 Scott Waite. All rights reserved.
//

import UIKit
import SpriteKit

class SplashScreen: SKScene {
    
    //Setup your scene here
    override func didMoveToView(view: SKView) {
        
    }
   
    
    //Called when a touch begins
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        let introLabel = childNodeWithName("introLabel")
        
        if(introLabel != nil){
            let fadeOut = SKAction.fadeOutWithDuration(1.5)
            
            introLabel?.runAction(fadeOut, completion: {
                let doors = SKTransition.doorwayWithDuration(1.5)
                let gameScene = GameScene(fileNamed: "GameScene")
                self.view?.presentScene(gameScene, transition: doors)
                
                
            })
        }
        
        let creditsLabel = childNodeWithName("creditsLabel")
        
        if(creditsLabel != nil){
            let fadeOut = SKAction.fadeOutWithDuration(1.5)
            
            creditsLabel?.runAction(fadeOut, completion: {
                let doors = SKTransition.doorsCloseVerticalWithDuration(1.5)
                let gameScene = CreditsScene(fileNamed: "CreditsScene")
                self.view?.presentScene(gameScene, transition: doors)
                
                
            })
            
        }
    }
    
    //Called before each frame is rendered
    override func update(currentTime: CFTimeInterval) {
        
    }
}
