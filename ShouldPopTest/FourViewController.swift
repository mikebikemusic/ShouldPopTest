//
//  FourViewController.swift
//  ShouldPopTest
//
//  Created by Mike on 11/19/16.
//  Copyright © 2016 Orologics. All rights reserved.
//

import UIKit

class FourViewController: UIViewController, UINavigationBarDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print("FourViewController DidLoad")
        
    }
    
    func navigationBar(_ navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool {
        print("FourViewController implementing shouldPop")
        return false
    }
    
    func navigationBar(_ navigationBar: UINavigationBar, didPop item: UINavigationItem) {
        print("FourViewController implementing didPop")
    }
    
    
    @IBAction func popPressed(_ sender: Any) {
        self.navigationController?.pop(animated: true)
    }
}

