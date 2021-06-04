//
//  SensitivityFactorView.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/17/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class SensitivityFactorView: UIView {

    //MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Properties
    
    private var sensitivityFactorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "78"
        label.font = UIFont(name: "SFCompactDisplay-Medium", size: 56)
        label.textColor = .label
        label.underline(color: .secondaryLabel, thickness: 0.8)
        label.textAlignment = .center
        return label
    }()
    
    private var infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFCompactDisplay-Medium", size: 19)
        label.textColor = .secondaryLabel
        label.adjustsFontForContentSizeCategory = true
        label.text = "Insulin Sensitivity Factor"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sensitivityFactorLabel,infoLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    
    //MARK: Methods
    
    private func setupView() {
        
        
        backgroundColor = .systemBackground
        addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    

}
