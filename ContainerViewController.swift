//
//  ContainerViewController.swift
//  SlideOutNavigation
//
//  Created by James Frost on 03/08/2014.
//  Copyright (c) 2014 James Frost. All rights reserved.
//

import UIKit
import QuartzCore

enum SlideOutState{
    case BothCollapsed
    case LeftPanelExpanded
    }
class ContainerViewController: UIViewController,BBFBoyViewControllerDelegate {
  
    var centerNavigationController: UINavigationController!
    var centerViewController: BBFBoyViewController!
    var currentState: SlideOutState = .BothCollapsed
    var leftViewController: MenuViewController?
    
    let centerPanelExpandedOffset: CGFloat = 60
    
  override func viewDidLoad() {
    super.viewDidLoad()
    centerViewController = UIStoryboard.centerViewController()
    centerViewController.delegate = self
    
    // wrap the centerViewController in a navigation controller, so we can push views to it
    // and display bar button items in the navigation bar
    centerNavigationController = UINavigationController(rootViewController: centerViewController)
    view.addSubview(centerNavigationController.view)
    addChildViewController(centerNavigationController)
    
    centerNavigationController.didMoveToParentViewController(self)
  }
  
}

private extension UIStoryboard {
  class func mainStoryboard() -> UIStoryboard { return UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()) }
  
  class func leftViewController() -> MenuViewController? {
    return mainStoryboard().instantiateViewControllerWithIdentifier("leftViewController") as? MenuViewController
  }
  
   
  class func centerViewController() -> BBFBoyViewController? {
    return mainStoryboard().instantiateViewControllerWithIdentifier("menuViewController") as? BBFBoyViewController
  }
  
}

extension ContainerViewController: MenuViewControllerDelegate {
    
    func toggleLeftPanel() {
        let notAlreadyExpanded = (currentState != .LeftPanelExpanded)
        if notAlreadyExpanded {
        addLeftPanelViewController()
        }
      animateLeftPanel(notAlreadyExpanded)
    }
    
    
    func addLeftPanelViewController() {
        if (leftViewController == nil) {
            leftViewController = UIStoryboard.leftViewController()
            leftViewController!.animals = MenuArray.allOptions()
            
            addChildSidePanelController(leftViewController!)
        }
    }
    
    func addChildSidePanelController(sidePanelController: MenuViewController) {
        view.insertSubview(sidePanelController.view, atIndex: 0)
        
        addChildViewController(sidePanelController)
        sidePanelController.didMoveToParentViewController(self)
    }
    
   
    
    func animateLeftPanel(shouldExpand: Bool) {
        if (shouldExpand) {
            currentState = .LeftPanelExpanded
            
            animateCenterPanelXPosition(targetPosition: CGRectGetWidth(centerNavigationController.view.frame) - centerPanelExpandedOffset)
        } else {
            animateCenterPanelXPosition(targetPosition: 0) { finished in
                self.currentState = .BothCollapsed
                
               self.leftViewController!.view.removeFromSuperview()
                self.leftViewController = nil;
            }
        }
    }
    
    func animateCenterPanelXPosition(targetPosition targetPosition: CGFloat, completion: ((Bool) -> Void)! = nil) {
    UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .CurveEaseInOut, animations: {
    self.centerNavigationController.view.frame.origin.x = targetPosition
    }, completion: completion)
    }

    
}