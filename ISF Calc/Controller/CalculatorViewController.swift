//
//  ViewController.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Calculator"
        setupView()
        self.entryOptions = dataSource.entryOptions
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Compute", style: .done, target: self, action: #selector(calculateISF))
    }
    
    //MARK: Properties
    
    private weak var entryOptions: EntryOptions?
    
    private var dataSource: DataEntryDataSource = DataEntryDataSource()
    
    private lazy var dataEntryTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .secondarySystemBackground
        tableView.register(DataEntryTableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.delegate = self
        tableView.dataSource = dataSource
        let footerView = UIView()
        footerView.backgroundColor = .secondarySystemBackground
        tableView.tableFooterView = footerView
        return tableView
    }()
    
    private var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Insulin Per Dose", "Total Daily Insulin"])
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(switchForm(_:)), for: .valueChanged)
        return segmentedControl
    }()
    
    //MARK: View Setup Methods
    
    private func setupView() {
        
        view.backgroundColor = .secondarySystemBackground
        view.addSubview(segmentedControl)
        view.addSubview(dataEntryTableView)
        
        segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        dataEntryTableView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 5).isActive = true
        dataEntryTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        dataEntryTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        dataEntryTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
        
    }
    
    @objc func switchForm(_ sender: UISegmentedControl) {
        dataSource.entryOptions.formType = EntryOptions.FormType(rawValue: sender.selectedSegmentIndex)!
        dataEntryTableView.reloadData()
    }
    
    @objc func calculateISF() {
        let navController = UINavigationController(rootViewController: ResultViewController())
        splitViewController?.showDetailViewController(navController, sender: self)
    }
    
}
    
    //MARK: TableView Delegate methods
extension CalculatorViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = SectionView()
        let sectionInfo = entryOptions!.sections()[section]
        headerView.populateView(title: sectionInfo.title, description: sectionInfo.description)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }

}

    //MARK: UISplitViewController Delegate Methods
extension CalculatorViewController: UISplitViewControllerDelegate {
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        
        return true
    }

}

