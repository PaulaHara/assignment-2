//
//  PurpleView.swift
//  Assignment2
//
//  Created by paula on 2018-10-03.
//  Copyright © 2018 paula. All rights reserved.
//

import UIKit

@IBDesignable
class PurpleView: UIView {
    override func draw(_ frame: CGRect) {
        let color:UIColor = UIColor.purple
        
        let drect = CGRect(x: 0, y: 0, width: 100, height: 50)
        let bpath:UIBezierPath = UIBezierPath(rect: drect)
        
        color.set()
        bpath.fill()
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
