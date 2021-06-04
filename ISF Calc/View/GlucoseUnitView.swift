//
//  GlucoseUnitView.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/17/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class GlucoseUnitView: UIView {

    //MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String) {
        self.init()
        self.titleLabel.text = title
    }
    
    //MARK: Properties
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFCompactDisplay-Medium", size: 17)
        label.textColor = .secondaryLabel
        label.adjustsFontForContentSizeCategory = true
        label.textAlignment = .center
        return label
    }()
    
    private var insulinValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFCompactDisplay-Medium", size: 20)
        label.textColor = .label
        label.adjustsFontForContentSizeCategory = true
        label.text = "+4 units"
        label.textAlignment = .center
        return label
    }()
    
    private var glucoseValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFCompactDisplay-Medium", size: 20)
        label.textColor = .label
        label.adjustsFontForContentSizeCategory = true
        label.text = "156"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel,insulinValueLabel,glucoseValueLabel])
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
