//
//  SectionView.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class SectionView: UIView {

    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Properties
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title1).withSize(20)
        label.adjustsFontForContentSizeCategory = true
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .label
        return label
    }()
    
    private var informationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline).withSize(16)
        label.adjustsFontForContentSizeCategory = true
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .secondaryLabel
        return label
    }()
    
    //MARK: Methods
    
    private func setupView() {
        
        backgroundColor = .secondarySystemBackground
        addSubview(titleLabel)
        addSubview(informationLabel)
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        informationLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        informationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        informationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        informationLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        informationLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        
    }
    
    func populateView(title: String, description: String) {
        titleLabel.text = title
        informationLabel.text = description
    }
    
    

}
