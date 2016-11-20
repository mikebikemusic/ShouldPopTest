//
//  ThreeViewController.swift
//  ShouldPopTest
//
//  Created by Mike on 11/19/16.
//  Copyright © 2016 Orologics. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController, NavigationControllerBackButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print("ThreeViewController DidLoad")
        
    }
    
    func shouldPopOnBackButtonPress() -> Bool {
        print("ThreeViewController shouldPopOnBackButtonPress")
        return false
    }
    
    
}

