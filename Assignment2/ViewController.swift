//
//  ViewController.swift
//  Assignment2
//
//  Created by paula on 2018-10-02.
//  Copyright © 2018 paula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var purpleView = UIView()
    var blueView = UIView()
    var blueView2 = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.green
        
        addViews()
        addConstraints()
        disableAutoResizingMasks()
        
    }

    func addViews() {
        // Calculate the height and size of each views
        purpleView = UIView(frame: CGRect.zero)
        purpleView.backgroundColor = UIColor.purple
        view.addSubview(purpleView)
        
        blueView = UIView(frame: CGRect.zero)
        blueView.backgroundColor = UIColor.blue
        view.addSubview(blueView)
        
        blueView2 = UIView(frame: CGRect.zero)
        blueView2.backgroundColor = UIColor.blue
        view.addSubview(blueView2)
    }
    
    func purpleViewConstraints() {
        let trailingConstraint = NSLayoutConstraint(item: purpleView, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.greaterThanOrEqual
            , toItem: view, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: -20)
        
        let bottomConstraint = NSLayoutConstraint(item: purpleView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.greaterThanOrEqual
            , toItem: view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: -20)
        
        let widthConstraint = NSLayoutConstraint(item: purpleView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: view, attribute: NSLayoutConstraint.Attribute.width, multiplier: 305.0/500.0, constant: 0)
        
        let heightConstraint = NSLayoutConstraint(item: purpleView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        
        NSLayoutConstraint.activate([trailingConstraint, bottomConstraint, widthConstraint, heightConstraint])
    }
    
    func blueViewConstraints() {
        let trailingConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
        
        let bottomConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        let widthConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        
        let heightConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        
        NSLayoutConstraint.activate([trailingConstraint, bottomConstraint, widthConstraint, heightConstraint])
    }
    
    func blueView2Constraints() {
        let trailingConstraint = NSLayoutConstraint(item: blueView2, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: blueView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1, constant: 20)
        
        let bottomConstraint = NSLayoutConstraint(item: blueView2, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        let widthConstraint = NSLayoutConstraint(item: blueView2, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        
        let heightConstraint = NSLayoutConstraint(item: blueView2, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal
            , toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        
        NSLayoutConstraint.activate([trailingConstraint, bottomConstraint, widthConstraint, heightConstraint])
    }
    
    func addConstraints() {
        purpleViewConstraints()
        blueViewConstraints()
        blueView2Constraints()
    }
    
    func disableAutoResizingMasks() {
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView2.translatesAutoresizingMaskIntoConstraints = false
    }
}

