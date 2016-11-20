//
//  NavigationControllerExtension.swift
//  ShouldPopTest
//
//  Created by Mike on 11/19/16.
//  Copyright © 2016 Orologics. All rights reserved.
//

import UIKit

// implementation found here http://stackoverflow.com/questions/1214965/setting-action-for-back-button-in-navigation-controller/19132881#19132881

protocol NavigationControllerBackButtonDelegate {
    func shouldPopOnBackButtonPress() -> Bool
}

extension UINavigationController {
    
    func navigationBar(_ navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool {
        print("UINavigationController overriding shouldPop")
        
        // Prevents from a synchronization issue of popping too many navigation items
        // and not enough view controllers or viceversa from unusual tapping
        if viewControllers.count < navigationBar.items!.count {
            return true
        }
        
        // Check if we have a view controller that wants to respond to being popped
        var shouldPop = true
        if let viewController = topViewController as? NavigationControllerBackButtonDelegate {
            shouldPop = viewController.shouldPopOnBackButtonPress()
        }
        
        if (shouldPop) {
            DispatchQueue.main.async {
                self.popViewController(animated: true)
            }
        } else {
            // Prevent the back button from staying in an disabled state
            for view in navigationBar.subviews {
                if view.alpha < 1.0 {
                    UIView.animate(withDuration: 0.25, animations: {
                        view.alpha = 1.0
                    })
                }
            }
            
        }
        
        return false
    }
    
    func pop(animated: Bool) {
        _ = self.popViewController(animated: animated)
    }
    

}



