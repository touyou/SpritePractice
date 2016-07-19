//
//  GameScene.swift
//  SpritePractice
//
//  Created by 藤井陽介 on 2016/07/19.
//  Copyright (c) 2016年 touyou. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        // フレームサイズをビューの境界と同じにする
        self.size = view.bounds.size
        // 重力の向きと強さの設定
        self.physicsWorld.gravity = CGVector(dx: 0.4, dy: -2.4)
        // エッジをつくってノードが画面からはみ出さないように
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */

        for touch in touches {
            let location = touch.locationInNode(self)

            let rectangle = SKSpriteNode(color: UIColor.greenColor(), size: CGSize(width: 80, height: 40))

            rectangle.position = location

            rectangle.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize(width: 80, height: 40))

            self.addChild(rectangle)
        }
    }

    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
