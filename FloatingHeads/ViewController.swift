//
//  ViewController.swift
//  FloatingHeads
//
//  Created by Steele on 2015-11-25.
//  Copyright © 2015 Steele. All rights reserved.
//

import UIKit


class ViewController: UIViewController, FloatingMenuControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func handleMenuButton(sender: AnyObject) {
        
        let controller = FloatingMenuViewController(fromView: sender as! UIButton)
        controller.delegate = self
        
        controller.buttonItems = [
            FloatingButton(image: UIImage(named: "icon-add")!),
            FloatingButton(image: UIImage(named: "model-008.jpg")!),
            FloatingButton(image: UIImage(named: "model-007.jpg")!),
            FloatingButton(image: UIImage(named: "model-004.jpg")!),
            FloatingButton(image: UIImage(named: "model-005.jpg")!),
        ]
        
        controller.labelTitles = [
            "New Contact",
            "Heidi Hernandez",
            "Neil Ross",
            "Elijah Woods",
            "Bella Douglas"
        ]

        presentViewController(controller, animated: true, completion: nil)
    }
    
    
    // MARK: FloatingMenuControllerDelegate
    
    func floatingMenuViewController(controller: FloatingMenuViewController, didTapOnButton button: UIButton, atIndex index: Int) {
        print("tapped index \(index)")
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}


