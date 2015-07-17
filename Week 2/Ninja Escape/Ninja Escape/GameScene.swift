//
//  GameScene.swift
//  Ninja Escape
//
//  Created by Scott Waite on 7/10/15.
//  Copyright (c) 2015 Scott Waite. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMoveToView(view: SKView) {
        
        self.physicsWorld.gravity = CGVectorMake(0, -9.8)
        
        let sceneBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        sceneBody.friction = 0
        self.physicsBody = sceneBody
        
        var spriteNode = SKSpriteNode(imageNamed: "boxImage")
        spriteNode.size = CGSize(width: 360, height: 360)
        spriteNode.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        spriteNode.physicsBody = SKPhysicsBody(rectangleOfSize: spriteNode.size)
        spriteNode.physicsBody?.affectedByGravity = false
        spriteNode.physicsBody?.dynamic = false
        self.addChild(spriteNode)
        
        var rotateAction = SKAction.rotateByAngle(CGFloat(M_PI), duration: 10)
        
        spriteNode.runAction(SKAction.repeatActionForever(rotateAction))
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        
        for touch: AnyObject in touches{
            var positionOfTouch = touch.locationInNode(self)
            
            var ball = SKShapeNode(circleOfRadius: 80)
            ball.fillColor = SKColor.redColor()
            ball.position = positionOfTouch
            ball.physicsBody = SKPhysicsBody(circleOfRadius: 80)
            ball.physicsBody?.affectedByGravity = true
            ball.physicsBody?.restitution = 1
            ball.physicsBody?.linearDamping = 0
            self.addChild(ball)
            
        }
    }
    
    
    
    
    
    
//    //Sound begins to play once the user touches the screen
//    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
//        var playSoundEffect = SKAction.playSoundFileNamed("background_music.caf", waitForCompletion: true)
//            self.runAction(playSoundEffect)
//    }
    

}
