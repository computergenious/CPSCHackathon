//
//  RoundButton.swift
//  Smart Start
//
//  Created by Amir Ahmed on 2018-02-17.
//  Copyright © 2018 Amir Ahmed. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
}
