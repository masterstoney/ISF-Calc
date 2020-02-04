//
//  TabViewController.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupController()
    }
    
    //MARK: Properties
    
    private var calculatorViewController = CalculatorViewController()
    private var resultViewController = ResultViewController()
    private var recordsViewController = RecordsViewController()
    private var recordsResultViewController = ResultViewController()
    
    
    //MARK: Methods
    
    private func setupController() {
                
        self.viewControllers = [
            generateSplitVC(title: "Calculator", image: UIImage(systemName: "dial"), masterVC: calculatorViewController, detailVC: resultViewController),
            generateSplitVC(title: "Records", image: UIImage(systemName: "list.number"), masterVC: recordsViewController, detailVC: recordsResultViewController)
        ]
        
    }
    
    private func generateSplitVC(title: String, image: UIImage?, masterVC: UIViewController, detailVC: UIViewController) -> UISplitViewController {
        
        let splitViewController = UISplitViewController()
        let masterNavVC = UINavigationController(rootViewController: masterVC)
        let detailNavVC = UINavigationController(rootViewController: detailVC)
        splitViewController.viewControllers = [masterNavVC,detailNavVC]
        splitViewController.delegate = masterVC as? UISplitViewControllerDelegate
        splitViewController.preferredPrimaryColumnWidthFraction = 1/3
        splitViewController.preferredDisplayMode = .allVisible
        splitViewController.tabBarItem.title = title
        splitViewController.tabBarItem.image = image
        return splitViewController
    }
    
}
