//
//  globals.swift
//  progressviews
//
//  Created by Siddhant on 12/02/18.
//  Copyright © Siddhant. All rights reserved.
//

import Foundation
import UIKit
import SwiftGifOrigin
import SwiftyGif


 var views = UIView()
 var lblone = UILabel()
 var lbltwo = UILabel()
extension UIViewController
{
    func startprogressview()
    {
        views = UIView()
        views.frame = CGRect(x: 50 , y: self.view.center.y, width: 280, height: 100)
        views.backgroundColor = UIColor.brown
        views.clipsToBounds = true
        views.layer.cornerRadius = 8
        self.view.addSubview(views)
        

        let gifManager = SwiftyGifManager(memoryLimit:20)
        let gif = UIImage(gifName: "loader")
        let imageview = UIImageView(gifImage: gif, manager: gifManager)
        imageview.frame = CGRect(x: 10, y: 10, width: 90.0, height: 80)
        views.addSubview(imageview)
        
        
        lblone.frame = CGRect(x: 120, y: 10, width: 100, height: 30)
        lblone.text = "hello"
        lblone.numberOfLines = 0
        lblone.font = UIFont.boldSystemFont(ofSize: 17)
        views.addSubview(lblone)

        
        lbltwo.frame = CGRect(x: 120, y: 40, width: 100, height: 30)
        lbltwo.text = "hello world"
        lbltwo.numberOfLines = 0
        views.addSubview(lbltwo)
        
       
    }
    
    func setprogressmessage(titlemessage : String ,pleasewaitmessage : String )
    {
        lblone.text = titlemessage;
        lbltwo.text = pleasewaitmessage;
    }
    
    func stopprogressview()
    {
        views.isHidden = true
    }
    
    
    
    
    
    
    
}
