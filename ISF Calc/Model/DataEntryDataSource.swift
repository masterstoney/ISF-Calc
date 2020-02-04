//
//  DataEntryDataSource.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class DataEntryDataSource: NSObject, UITableViewDataSource {

    //MARK: Properties
    
    var entryOptions: EntryOptions = EntryOptions(type: .insulinPerDose)
    
    //MARK: TableView DataSource and Delegate methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return entryOptions.sections().count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entryOptions.options()[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! DataEntryTableViewCell
        let option = entryOptions.options()[indexPath.section][indexPath.row]
        cell.detailLabel.text = option.title
        cell.dataTextField.placeholder = option.unit
        cell.selectionStyle = .none
        return cell
    }
    
}
