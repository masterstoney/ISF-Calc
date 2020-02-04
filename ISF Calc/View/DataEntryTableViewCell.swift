//
//  DataEntryTableViewCell.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class DataEntryTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Properties
    
    var detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontForContentSizeCategory = true
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    var dataTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .right
        return textField
    }()
    
    //MARK: Methods
    
    private func setupView() {
        
        addSubview(detailLabel)
        addSubview(dataTextField)
        
        detailLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        detailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        detailLabel.trailingAnchor.constraint(equalTo: dataTextField.leadingAnchor, constant: -5).isActive = true
        detailLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 44).isActive = true
        detailLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        dataTextField.topAnchor.constraint(equalTo: topAnchor).isActive = true
        dataTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        dataTextField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25).isActive = true
        dataTextField.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
}
