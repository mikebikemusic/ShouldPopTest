//
//  TwoViewController.swift
//  ShouldPopTest
//
//  Created by Mike on 11/19/16.
//  Copyright © 2016 Orologics. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("TwoViewController DidLoad")
        
    }
    
    @IBAction func popPressed(_ sender: Any) {
        self.navigationController?.pop(animated: true)
    }
}

extension TwoViewController: NavigationControllerBackButtonDelegate {
    func shouldPopOnBackButtonPress() -> Bool {
        print("TwoViewController shouldPopOnBackButtonPress")
        return false
    }
}
