//
//  SlideFIle.swift
//  BBF
//
//  Created by ankit on 10/03/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

import Foundation

class MenuArray {
    
    let title: String

    init(title: String) {
        self.title = title
     }
    
    class func allOptions () -> Array<MenuArray>{
    
        return [MenuArray(title: "HOME"),
                MenuArray(title: "Customize your Workout"),
                MenuArray(title: "Select Language"),
                MenuArray(title: "RateUS"),
                MenuArray(title: "Share"),
                MenuArray(title: "Remove Ads")
        
               ]
    
    }
    
}