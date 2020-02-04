//
//  ViewController.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class CalculatorViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Calculator"
        self.tableView.register(DataEntryTableViewCell.self, forCellReuseIdentifier: "cellId")
        let footerView = UIView()
        view.backgroundColor = .secondarySystemBackground
        self.tableView.tableFooterView = footerView
    }
    
    //MARK: Properties
    
    private var entryOptions: EntryOptions = EntryOptions()
    
    
    //MARK: TableView DataSource and Delegate methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return entryOptions.sections().count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entryOptions.options()[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! DataEntryTableViewCell
        let option = entryOptions.options()[indexPath.section][indexPath.row]
        cell.detailLabel.text = option.title
        cell.dataTextField.placeholder = option.unit
        cell.selectionStyle = .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = SectionView()
        let sectionInfo = entryOptions.sections()[section]
        headerView.populateView(title: sectionInfo.title, description: sectionInfo.description)
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let navController = UINavigationController(rootViewController: ResultViewController())
        splitViewController?.showDetailViewController(navController, sender: self)
        print(indexPath.row)
    }

}

    //MARK: UISplitViewController Delegate Methods
extension CalculatorViewController: UISplitViewControllerDelegate {
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        
        return true
    }

}

