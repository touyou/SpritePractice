//
//  SwipeGameScene.swift
//  SpritePractice
//
//  Created by 藤井陽介 on 2016/07/19.
//  Copyright © 2016年 touyou. All rights reserved.
//

import SpriteKit

final class SwipeGameScene: SKScene {

    var beginPos: CGPoint!

    override func didMoveToView(view: SKView) {
        print("SwipeGameScene")
        // フレームサイズをビューの境界と同じにする
        self.size = view.bounds.size

        // エッジをつくってノードが画面からはみ出さないように
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)

        self.physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)

        // 円をつくる
        let circle = SKShapeNode(circleOfRadius: 30)
        circle.position = CGPointMake(self.size.width/2, self.size.height/2)
        circle.fillColor = UIColor.cyanColor()
        circle.name = "Player"
        circle.physicsBody = SKPhysicsBody(circleOfRadius: 30)
        self.addChild(circle)

    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        for touch in touches {
            beginPos = touch.locationInNode(self)
        }
    }

    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
    }

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {

        for touch in touches {
            let endPos = touch.locationInNode(self)

            self.childNodeWithName("Player")?.physicsBody?.velocity.dx = (endPos.x - beginPos.x) * 5.0
            self.childNodeWithName("Player")?.physicsBody?.velocity.dy = (endPos.y - beginPos.y) * 5.0
        }
    }

    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        if self.childNodeWithName("Player")?.physicsBody?.velocity != CGVector(dx: 0, dy: 0) {
            let velocity = self.childNodeWithName("Player")?.physicsBody?.velocity
            self.childNodeWithName("Player")?.physicsBody?.velocity = CGVector(dx: (velocity?.dx)! * 0.95, dy: (velocity?.dy)! * 0.95)
        }
    }
}
