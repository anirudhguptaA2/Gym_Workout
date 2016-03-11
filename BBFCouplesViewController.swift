//
//  BBFCouplesViewController.swift
//  BBF
//
//  Created by aman on 03/03/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

import UIKit

class BBFCouplesViewController: UIViewController {

    @IBOutlet weak var boysImageView: UIImageView!
    @IBOutlet weak var girlsImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
     override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false

    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
              // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func boysExerciseViewController(sender: AnyObject) {
//    self.performSegueWithIdentifier("BoyViewController", sender: self)
//    }
//    
//    @IBAction func girlsExerciseViewController(sender: AnyObject) {
//       self.performSegueWithIdentifier("GirlViewController", sender: self)
//    }
 
}
