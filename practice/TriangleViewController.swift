//
//  TriangleViewController.swift
//  practice
//
//  Created by Brandon Kelley on 12/9/15.
//  Copyright © 2015 brandonmkelley.com. All rights reserved.
//

import Cocoa

class TriangleViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    private func draw() {
        var context: CGContextRef = UIGraphicsGetCurrentContext()
        
    }
    
}