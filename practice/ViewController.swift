//
//  ViewController.swift
//  practice
//
//  Created by Brandon Kelley on 12/9/15.
//  Copyright © 2015 brandonmkelley.com. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    // View to display the triangle
    @IBOutlet var triangleView: NSImageView!
    
    // Labels for sides of the triangle
    @IBOutlet var sideALabel: NSTextField!
    @IBOutlet var sideBLabel: NSTextField!
    @IBOutlet var sideCLabel: NSTextField!
    
    // TextFields for user input
    @IBOutlet var sideATextField: NSTextField!
    @IBOutlet var sideBTextField: NSTextField!
    
    // Solve for hypotenuse and display
    @IBAction func solve(sender: AnyObject) {
        
        // Set labels
        let sideA: Float = sideATextField.floatValue
        let sideB: Float = sideBTextField.floatValue
        sideALabel.floatValue = sideA
        sideBLabel.floatValue = sideB
        sideCLabel.floatValue = sqrt(pow(sideA, 2) + pow(sideB, 2))
        
        // Reset textfields
        sideATextField.stringValue = ""
        sideBTextField.stringValue = ""
        
    }
    
    // Triangle image from file
    let triangleImage = NSImage(named: "Triangle")!
    
    // Background color
    let backgroundColor: CGColorRef = CGColorCreateGenericRGB(0.9, 0.9, 0.9, 1.0)
    
    override func viewDidLoad() {
        
        // Call superclass
        super.viewDidLoad()
        
        // Set stuff up
        setBackground()
        setLabels()
        
    }
    
    private func setBackground() {
        
        // Set background color
        view.wantsLayer = true
        view.layer?.backgroundColor = backgroundColor
        
        // Set triangle image
        triangleView.image = triangleImage
    
    }
    
    private func setLabels() {
        sideALabel.stringValue = ""
        sideBLabel.stringValue = ""
        sideCLabel.stringValue = ""
        sideATextField.stringValue = ""
        sideATextField.placeholderString = "Enter a side"
        sideBTextField.stringValue = ""
        sideBTextField.placeholderString = "Enter another side"
    }

}