//
//  ViewController.swift
//  progressviews
//
//  Created by Siddhanton 12/02/18.
//  Copyright © 2018 Siddhant All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.startprogressview()
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(hideloader), userInfo: nil, repeats: true)
        self.setprogressmessage(titlemessage: "Please Wait", pleasewaitmessage: "Loading")
    }
    
    @objc func hideloader()
    {
        self.stopprogressview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

