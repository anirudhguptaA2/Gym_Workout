//
//  BBFBoyViewController.swift
//  BBF
//
//  Created by aman on 03/03/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

import UIKit

@objc
protocol BBFBoyViewControllerDelegate {
    optional func toggleLeftPanel()
    
}

class BBFBoyViewController: UIViewController {
    var delegate:BBFBoyViewControllerDelegate?
    
    @IBAction func boyMenuButton(sender: AnyObject) {
         delegate?.toggleLeftPanel?()
    }
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = false
    
    // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension BBFBoyViewController : UITableViewDataSource , UITableViewDelegate {
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        
        switch (self.segmentControl.selectedSegmentIndex){
        case 0:
            print("case 0")
        case 1:
            print("case 1")
        default:
            print("Nothing to print")
        }
        
        return cell!
    }
    
}
