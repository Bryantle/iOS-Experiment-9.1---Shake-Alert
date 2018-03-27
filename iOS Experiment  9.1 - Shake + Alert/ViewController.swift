//
//  ViewController.swift
//  iOS Experiment  9.1 - Shake + Alert
//
//  Created by mac on 3/26/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func becomeFirstResponder() -> Bool {
        return true
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            let noodle = UIAlertController(title: nil, message: "Stop Shaking", preferredStyle: UIAlertControllerStyle.alert)
            noodle.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(noodle, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
// When there is a motion event and the event is a shake, rather than changing the text of a label, now it triggers an alert notification by creating a UIAlertController instance, adding an action to dismiss the instance notification, and finally presenting all this to the user. 
