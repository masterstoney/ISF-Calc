//
//  ScaleDetailView.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/17/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class ScaleDetailView: UIView {

    //MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Properties
    
    
    private var lowerBoundGUView: GlucoseUnitView = GlucoseUnitView(title: "Lower")
    private var upperBoundGUView: GlucoseUnitView = GlucoseUnitView(title: "Upper")
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [lowerBoundGUView, upperBoundGUView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    
    //MARK: Methods
    
    private func setupView() {
        
        
        backgroundColor = .systemBackground
        
        addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        
        
    }
    
    
    
    
    
    
    
    
    
}
