//
//  FourViewController.swift
//  ShouldPopTest
//
//  Created by Mike on 11/19/16.
//  Copyright © 2016 Orologics. All rights reserved.
//

import UIKit

class FourViewController: UIViewController, NavigationControllerBackButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("FourViewController DidLoad")
    }
        
    @IBAction func popPressed(_ sender: Any) {
        self.navigationController?.pop(animated: true)
    }
    
    func shouldPopOnBackButtonPress() -> Bool {
        print("FourViewController shouldPopOnBackButtonPress")
        warnUser()
        return false
    }
    
    func warnUser() {
        let alertController = UIAlertController(title: "Confirmation", message: "Are you sure you want to leave Four?",preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        let takeAction = UIAlertAction(title: "Yes",style: .default, handler: { _ in
            self.navigationController?.pop(animated: true)
        })
        alertController.addAction(takeAction)
        present(alertController, animated: true, completion: nil)
    }

}

