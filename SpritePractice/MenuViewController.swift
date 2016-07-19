//
//  MenuViewController.swift
//  SpritePractice
//
//  Created by 藤井陽介 on 2016/07/19.
//  Copyright © 2016年 touyou. All rights reserved.
//

import UIKit

final class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func toBlockGame() {
        print("toBlockGame")
        performSegueWithIdentifier("toBlockGame", sender: nil)
    }

    @IBAction func toSwipeGame() {
        print("toSwipeGame")
        performSegueWithIdentifier("toSwipeGame", sender: nil)
    }
}
