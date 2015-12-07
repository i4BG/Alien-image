//
//  ViewController.swift
//  Alien image
//
//  Created by Ivaylo Todorov on 12.11.15 г..
//  Copyright © 2015 г. Ivaylo Todorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1

    var timer = NSTimer()
    
    var isAnimation = true
    
    @IBOutlet var danceImage: UIImageView!
    
    @IBAction func actionButton(sender: AnyObject) {
        
        
        if isAnimation == true {
    
            timer.invalidate()
            
            isAnimation = false
      
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            
            isAnimation = true
            
        }
    
        danceImage.image = UIImage(named: "frame\(counter).png")
            
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
    }
    
    func doAnimation() {
        
        if counter == 9 {
            
            counter = 1
            
        } else {
            
            counter++
            
        }
        
        danceImage.image = UIImage(named: "frame\(counter).png")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

