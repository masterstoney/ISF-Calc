//
//  RecordsViewController.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class RecordsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Records"
    }
    

}

    //MARK: SplitViewController Delegate Methods
extension RecordsViewController: UISplitViewControllerDelegate {
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        
        return true
    }
    
}
