//
//  ResultViewController.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Result"
        

        
    }
    
    override func loadView() {
        self.view = resultView
    }
    
    //MARK: Properties
    
    private var resultView = ResultView()
    
    //MARK: Methods
    
    

}
