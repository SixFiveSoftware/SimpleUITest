//
//  ShapeView.swift
//  SimpleUITest
//
//  Created by BJ on 7/7/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import UIKit

enum ShapeColor: Int {
    case Red = 0
    case Orange
    case Yellow
    case Green
    case Blue
    case Purple
    
    var color: UIColor {
        switch self {
        case .Red:
            return UIColor.redColor()
        case .Orange:
            return UIColor.orangeColor()
        case .Yellow:
            return UIColor.yellowColor()
        case .Green:
            return UIColor.greenColor()
        case .Blue:
            return UIColor.blueColor()
        case .Purple:
            return UIColor.purpleColor()
        }
    }
}

class ShapeView: UIView {
    
    var viewCounter: Int = 0 {
        didSet {
            accessibilityLabel = "Button\(viewCounter)"
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        let rnd = Int(arc4random_uniform(6))
        backgroundColor = ShapeColor(rawValue: rnd)?.color
        
        isAccessibilityElement = true
        accessibilityTraits = UIAccessibilityTraitButton
    }
    
}
