//
//  ViewController.swift
//  SimpleUITest
//
//  Created by BJ on 7/9/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func addShapeButtonTapped(sender: AnyObject) {
        let maxX = UInt32(view.frame.size.width) - 100
        let maxY = UInt32(view.frame.size.height) - 100
        
        let rndXOrigin = Int(arc4random_uniform(maxX))
        let rndYOrigin = Int(arc4random_uniform(maxY))
        
        let frame = CGRect(x: rndXOrigin, y: rndYOrigin, width: 100, height: 100)
        
        let shape = ShapeView(frame: frame)
        
        view.addSubview(shape)
    }

}

