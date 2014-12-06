//
//  ViewController.swift
//  StopWatch
//
//  Created by davidforlove on 11/15/14.
//  Copyright (c) 2014 davidforlove. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var timeNumber: UILabel!
    var count=0
    var time = NSTimer()
    
    @IBAction func timeStarter(sender: AnyObject) {
        
    time=NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
        
}
    
    @IBAction func pauseButton(sender: AnyObject) {
        
        time.invalidate()
        count=0
        timeNumber.text = "0"
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
       
    }
    
   func result(){
        count++;
        timeNumber.text = String(count)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

