//
//  BBFHomeViewController.swift
//  BBF
//
//  Created by aman on 03/03/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class BBFHomeViewController: UIViewController {

//    @IBOutlet weak var homeImageView: UIView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setUpView()
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    func setUpView() {
//        let path = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Leopard2", ofType:"mov")!)
//        let player = AVPlayer(URL: path)
//        
//        let newLayer = AVPlayerLayer(player: player)
//        newLayer.frame = self.homeImageView.frame
//        self.homeImageView.layer.addSublayer(newLayer)
//        newLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
//        
//        player.play()
//        player.actionAtItemEnd = AVPlayerActionAtItemEnd.None
//        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "videoDidPlayToEnd:", name: "AVPlayerItemDidPlayToEndTimeNotification", object: player.currentItem)
//    }
//    
////    func videoDidPlayToEnd(notification:NSNotification){
////        let player = notification.object as! AVPlayerItem
////        player.seekToTime(kCMTimeZero)
////    }

 
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.view.layer.addSublayer(self.playerLayer)
//        //      let mySecondButton = UIButton()
//        let myFirstButton = UIButton()
//        myFirstButton.setTitle("Login", forState: .Normal)
//        myFirstButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
//        myFirstButton.frame = CGRectMake(self.view.frame.width / 2, self.view.frame.height / 2, self.view.frame.width, self.view.frame.height)
//        myFirstButton.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
//        //      self.view.addSubview(mySecondButton)
//        self.view.addSubview(myFirstButton)
//        
//        
//    }
//    
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    override func viewWillDisappear(animated: Bool) {
//        NSNotificationCenter.defaultCenter().removeObserver(self)
//    }
//    func pressed(sender: UIButton!) {
////        let alertController = UIAlertController(title: "Hi", message: "Hello", preferredStyle: .Alert)
////        
////        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
////        alertController.addAction(defaultAction)
//        let bbfCouplesViewController = BBFCouplesViewController()
//        presentViewController(bbfCouplesViewController , animated: true, completion: nil)
//    }
//
//    override func willAnimateRotationToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
//        playerLayer.frame = self.view.frame
//    }
//    func playerDidReachEnd(){
//        self.playerLayer.player!.seekToTime(kCMTimeZero)
//        self.playerLayer.player!.play()
//        
//    }
//    
//    lazy var playerLayer:AVPlayerLayer = {
//        
//        let player = AVPlayer(URL:  NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Leopard2", ofType: "mov")!))
//        //    player.muted = true
//        player.allowsExternalPlayback = false
//        player.appliesMediaSelectionCriteriaAutomatically = false
//        var error:NSError?
//        
//        // This is needed so it would not cut off users audio (if listening to music etc.
//        do {
//            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
//        } catch var error1 as NSError {
//            error = error1
//        } catch {
//            fatalError()
//        }
//        if error != nil {
//            print(error)
//        }
//        
//        var playerLayer = AVPlayerLayer(player: player)
//        playerLayer.frame = self.view.frame
//        playerLayer.videoGravity = "AVLayerVideoGravityResizeAspectFill"
//        
//        playerLayer.backgroundColor = UIColor.blackColor().CGColor
//        player.play()
//        NSNotificationCenter.defaultCenter().addObserver(self, selector:"playerDidReachEnd", name:AVPlayerItemDidPlayToEndTimeNotification, object:nil)
//        return playerLayer
//    }()
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
