//
//  GreenView.swift
//  Assignment2
//
//  Created by paula on 2018-10-02.
//  Copyright © 2018 paula. All rights reserved.
//

import UIKit

@IBDesignable
class GreenView: UIView {
    
    override func draw(_ rect: CGRect) {
        let color:UIColor = UIColor.purple
        
        let drect = CGRect.zero
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let bpath:UIBezierPath = UIBezierPath(rect: drect)
        
        color.set()
        bpath.fill()
        
        let margins = super.layoutMarginsGuide
        // Pin the leading edge of myView to the margin's leading edge
        self.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        // Pin the trailing edge of myView to the margin's trailing edge
        self.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        // Give myView a 1:2 aspect ratio
        self.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 2.0).isActive = true
    }
    
}
