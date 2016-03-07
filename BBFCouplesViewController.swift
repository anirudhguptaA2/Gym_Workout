//
//  BBFCouplesViewController.swift
//  BBF
//
//  Created by aman on 03/03/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

import UIKit

class BBFCouplesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func boyButtonAction(sender: AnyObject) {
        let bbfBoyViewController = BBFBoyViewController()
        presentViewController(bbfBoyViewController , animated: true, completion: nil)
    }
    
    
    @IBAction func girlButtonAction(sender: AnyObject) {
        let bbfGirlViewController = BBFGirlViewController()
        presentViewController(bbfGirlViewController , animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}