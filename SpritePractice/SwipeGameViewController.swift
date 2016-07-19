//
//  SwipeGameViewController.swift
//  SpritePractice
//
//  Created by 藤井陽介 on 2016/07/19.
//  Copyright © 2016年 touyou. All rights reserved.
//

import UIKit
import SpriteKit

final class SwipeGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("SwipeGameViewController")

        // Do any additional setup after loading the view.
        if let scene = SwipeGameScene(fileNamed:"SwipeGameScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true

            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true

            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill

            skView.presentScene(scene)
        }
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return false
    }

}
