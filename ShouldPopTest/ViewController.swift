//
//  ViewController.swift
//  ShouldPopTest
//
//  Created by Mike on 11/19/16.
//  Copyright © 2016 Orologics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("ViewController DidLoad")
        let navigationBar = navigationController!.navigationBar
        navigationBar.tintColor = .green
   }
    
    func navigationBar(_ navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool {
        print("ViewController shouldPop")
        return true
    }


}



