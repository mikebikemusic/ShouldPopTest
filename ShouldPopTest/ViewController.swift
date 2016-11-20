//
//  ViewController.swift
//  ShouldPopTest
//
//  Created by Mike on 11/19/16.
//  Copyright © 2016 Orologics. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationBarDelegate { // 1. The root VC needs to be a delegate of the Nav Bar

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController DidLoad")
        let navigationBar = navigationController!.navigationBar
        navigationBar.tintColor = .green
        // 9. More code in the root VC is needed if a downstrem VC wants to segue back to the root VC
        navigationController?.navigationBar.delegate = self // 2. The root VC needs to set up the call back in viewDidLoad
   }
    
    func navigationBar(_ navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool {
        print("ViewController shouldPop")
        return (self.navigationController?.navigationBar(navigationBar, shouldPop: item))! // 3. The root VC needs to forward the navigationBar to the Nav Controller
    }


}



