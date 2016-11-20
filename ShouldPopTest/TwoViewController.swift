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
        print("TwoViewController DidLoad")
        navigationController?.title = "Two"
    }
    
    @IBAction func popPressed(_ sender: Any) {
        self.navigationController?.pop(animated: true) // 6. An explicit popViewController will bypass the ShouldPop
    }
}

// 4. The downstream VC's only need to be NavigationControllerBackButtonDelegates

extension TwoViewController: NavigationControllerBackButtonDelegate { // 5. There are two ways to define the delegate. Other way is in ThreeViewController
    
    func shouldPopOnBackButtonPress() -> Bool { // 7. shouldPopOnBackButtonPress is safe becuase it can only get called when it's the top VC
        print("TwoViewController shouldPopOnBackButtonPress")
        warnUser()
        return false // 8. If checking requires asynchronous work, then shouldPopOnBackButtonPress should retun false and let the completion routine decide whether to pop
    }
    
    func warnUser() {
        let alertController = UIAlertController(title: "Confirmation", message: "Are you sure you want to go back?",preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        let takeAction = UIAlertAction(title: "Yes",style: .default, handler: { _ in
            self.navigationController?.pop(animated: true)
        })
        alertController.addAction(takeAction)
        present(alertController, animated: true, completion: nil)
    }
}
