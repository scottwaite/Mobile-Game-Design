//
//  GameScene.swift
//  Ninja Escape
//
//  Created by Scott Waite on 7/30/15.
//  Copyright (c) 2015 Scott Waite. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var ninja: SKSpriteNode!
    var ninjaRun:SKAction!
    
    
    override func didMoveToView(view: SKView) {
        
        // Create the function
        
        //setupNinja()
        //setupNinja(dinoRun)
        
        func setupNinja() {
            ninja = SKSpriteNode(imageNamed: "run1.png")
            ninja.position = CGPoint(x: 0.5, y: 0.5)
            self.addChild(ninja)
        }
        
        // Once the view is loaded, start the background music
        var playBackgroundMusic = SKAction.playSoundFileNamed("background_music.caf", waitForCompletion: true)
        self.runAction(playBackgroundMusic);
        
        self.physicsWorld.gravity = CGVectorMake(0, -9.8)
        
        let sceneBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        sceneBody.friction = 0
        self.physicsBody = sceneBody
        
        
        // Create the running sprite which will be animated
        
        var runAnimation = [SKTexture]()
        let runAtlas = SKTextureAtlas(named: "run1")
        for index in 000...runAtlas.textureNames.count {
            let imgName = String(format: "run%01d", index)
            runAnimation += [runAtlas.textureNamed(imgName)]
        }

        
        // Create the box sprite 01
        var boxNode1 = SKSpriteNode(imageNamed: "boxImage")
        boxNode1.size = CGSize(width: 150, height: 150)
        boxNode1.position = CGPoint(x: self.frame.size.width/3.25, y: self.frame.size.height/1.25)
        boxNode1.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode1.size)
        boxNode1.physicsBody?.affectedByGravity = true
        boxNode1.physicsBody?.dynamic = false
        self.addChild(boxNode1)
        
        // Create the box sprite 02
        var boxNode2 = SKSpriteNode(imageNamed: "boxImage")
        boxNode2.size = CGSize(width: 150, height: 150)
        boxNode2.position = CGPoint(x: self.frame.size.width/1.75, y: self.frame.size.height/1.25)
        boxNode2.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode2.size)
        boxNode2.physicsBody?.affectedByGravity = true
        boxNode2.physicsBody?.dynamic = false
        self.addChild(boxNode2)
        
        // Create the box sprite 03
        var boxNode3 = SKSpriteNode(imageNamed: "boxImage")
        boxNode3.size = CGSize(width: 150, height: 150)
        boxNode3.position = CGPoint(x: self.frame.size.width/1.20, y: self.frame.size.height/1.25)
        boxNode3.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode3.size)
        boxNode3.physicsBody?.affectedByGravity = true
        boxNode3.physicsBody?.dynamic = false
        self.addChild(boxNode3)
        
        // Create the box sprite 04
        var boxNode4 = SKSpriteNode(imageNamed: "boxImage")
        boxNode4.size = CGSize(width: 150, height: 150)
        boxNode4.position = CGPoint(x: self.frame.size.width/2.50, y: self.frame.size.height/1.55)
        boxNode4.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode4.size)
        boxNode4.physicsBody?.affectedByGravity = true
        boxNode4.physicsBody?.dynamic = false
        self.addChild(boxNode4)
        
        // Create the box sprite 05
        var boxNode5 = SKSpriteNode(imageNamed: "boxImage")
        boxNode5.size = CGSize(width: 150, height: 150)
        boxNode5.position = CGPoint(x: self.frame.size.width/1.40, y: self.frame.size.height/1.55)
        boxNode5.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode5.size)
        boxNode5.physicsBody?.affectedByGravity = true
        boxNode5.physicsBody?.dynamic = false
        self.addChild(boxNode5)
        
        // Create the box sprite 06
        var boxNode6 = SKSpriteNode(imageNamed: "boxImage")
        boxNode6.size = CGSize(width: 150, height: 150)
        boxNode6.position = CGPoint(x: self.frame.size.width/3.25, y: self.frame.size.height/2)
        boxNode6.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode6.size)
        boxNode6.physicsBody?.affectedByGravity = true
        boxNode6.physicsBody?.dynamic = false
        self.addChild(boxNode6)
        
        // Create the box sprite 07
        var boxNode7 = SKSpriteNode(imageNamed: "boxImage")
        boxNode7.size = CGSize(width: 150, height: 150)
        boxNode7.position = CGPoint(x: self.frame.size.width/1.75, y: self.frame.size.height/2)
        boxNode7.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode7.size)
        boxNode7.physicsBody?.affectedByGravity = true
        boxNode7.physicsBody?.dynamic = false
        self.addChild(boxNode7)
        
        // Create the box sprite 08
        var boxNode8 = SKSpriteNode(imageNamed: "boxImage")
        boxNode8.size = CGSize(width: 150, height: 150)
        boxNode8.position = CGPoint(x: self.frame.size.width/1.20, y: self.frame.size.height/2)
        boxNode8.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode8.size)
        boxNode8.physicsBody?.affectedByGravity = true
        boxNode8.physicsBody?.dynamic = false
        self.addChild(boxNode8)
        
        // Create the box sprite 09
        var boxNode9 = SKSpriteNode(imageNamed: "boxImage")
        boxNode9.size = CGSize(width: 150, height: 150)
        boxNode9.position = CGPoint(x: self.frame.size.width/2.50, y: self.frame.size.height/2.90)
        boxNode9.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode9.size)
        boxNode9.physicsBody?.affectedByGravity = true
        boxNode9.physicsBody?.dynamic = false
        self.addChild(boxNode9)
        
        // Create the box sprite 10
        var boxNode10 = SKSpriteNode(imageNamed: "boxImage")
        boxNode10.size = CGSize(width: 150, height: 150)
        boxNode10.position = CGPoint(x: self.frame.size.width/1.40, y: self.frame.size.height/2.90)
        boxNode10.physicsBody = SKPhysicsBody(rectangleOfSize: boxNode10.size)
        boxNode10.physicsBody?.affectedByGravity = true
        boxNode10.physicsBody?.dynamic = false
        self.addChild(boxNode10)
        
        
        
        
        // Make the box spin endlessly
        var rotateAction = SKAction.rotateByAngle(CGFloat(M_PI), duration: 10)
        
        boxNode1.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode2.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode3.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode4.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode5.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode6.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode7.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode8.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode9.runAction(SKAction.repeatActionForever(rotateAction))
        boxNode10.runAction(SKAction.repeatActionForever(rotateAction))
        
        // Create the spinning saw
        let saw = SKSpriteNode(imageNamed: "saw.png")
        saw.position = CGPointMake(self.size.width/1, self.size.height/1)
        saw.size = CGSize(width: 150,height: 150)
        
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
        saw.physicsBody = SKPhysicsBody(circleOfRadius: 50)
        saw.runAction(endlessAction);
        saw.physicsBody?.affectedByGravity = false
        
    }
    
 
    // Upon touching the screen, play a sound effect and create a ninja
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
            var positionOfTouch = touch.locationInNode(self)
            
            var playSoundEffect = SKAction.playSoundFileNamed("scifi2.mp3", waitForCompletion: true)
            self.runAction(playSoundEffect)
            var ninja = SKSpriteNode(imageNamed: "ninjaGlide")
            ninja.position = positionOfTouch
            // Set the radius of the ninja as a circle
            ninja.physicsBody = SKPhysicsBody(circleOfRadius: 50)
            ninja.physicsBody?.affectedByGravity = true
            ninja.physicsBody?.restitution = 1
            ninja.physicsBody?.linearDamping = 0
            ninja.size = CGSize(width: 150, height: 150)
            self.addChild(ninja)
            
        }
        
    }

}
