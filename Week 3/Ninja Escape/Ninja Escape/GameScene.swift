//
//  GameScene.swift
//  Ninja Escape
//
//  Created by Scott Waite on 7/16/15.
//  Copyright (c) 2015 Scott Waite. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMoveToView(view: SKView) {
        
        // Once the view is loaded, start the background music
        var playBackgroundMusic = SKAction.playSoundFileNamed("background_music.caf", waitForCompletion: true)
        self.runAction(playBackgroundMusic);
        
        self.physicsWorld.gravity = CGVectorMake(0, -9.8)
        
        let sceneBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        sceneBody.friction = 0
        self.physicsBody = sceneBody
        
        // Create the box sprite
        var boxNode = SKSpriteNode(imageNamed: "boxImage")
        boxNode.size = CGSize(width: 300, height: 300)
        boxNode.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        boxNode.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode.size)
        boxNode.physicsBody?.affectedByGravity = false
        boxNode.physicsBody?.dynamic = false
        self.addChild(boxNode)
        
        // Make the box spin endlessly
        var rotateAction = SKAction.rotateByAngle(CGFloat(M_PI), duration: 10)
       
        boxNode.runAction(SKAction.repeatActionForever(rotateAction))
        
        // Create the spinning saw        
        let saw = SKSpriteNode(imageNamed: "saw.png")
        saw.position = CGPointMake(self.size.width/2, self.size.height/2)
        
        self.addChild(saw)
        
        // Create the saw sound effect
        var playSoundEffect = SKAction.playSoundFileNamed("chainsaw_operating.mp3", waitForCompletion: true)
        self.runAction(playSoundEffect)

        
        // Create the movement for the saw
        let moveRight = SKAction.moveByX(-400, y: 0, duration: 20.0)
        let moveBottom = SKAction.moveByX(0, y:-100, duration:20.0)
        let moveLeft = SKAction.moveByX(-400, y: 0, duration: 20.0)
        let reversedMoveBottom = moveBottom.reversedAction()
        let sequence = SKAction.sequence([moveRight, moveBottom, reversedMoveBottom])
        let endlessAction = SKAction.repeatActionForever(sequence)
        
        // Make the saw rotate and set physics properties
        saw.runAction(SKAction.repeatActionForever(rotateAction))
        saw.physicsBody = SKPhysicsBody(circleOfRadius: 150)
        saw.runAction(endlessAction);
        saw.physicsBody?.affectedByGravity = false
        
    }
    
        // Upon touching the screen, play a sound effect and create a ninja
        override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
 
        for touch: AnyObject in touches{
            var positionOfTouch = touch.locationInNode(self)
            
            var playSoundEffect = SKAction.playSoundFileNamed("scifi2.mp3", waitForCompletion: true)
            self.runAction(playSoundEffect)
            var ball = SKSpriteNode(imageNamed: "ninjaGlide")
            ball.position = positionOfTouch
            // Set the radius of the ninja as a circle
            ball.physicsBody = SKPhysicsBody(circleOfRadius: 150)
            ball.physicsBody?.affectedByGravity = true
            ball.physicsBody?.restitution = 1
            ball.physicsBody?.linearDamping = 0
            self.addChild(ball)
            
        }
           
    }
    
}
