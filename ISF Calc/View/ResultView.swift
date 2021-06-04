//
//  ResultView.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/7/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

class ResultView: UIView {

    //MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Properties
    
    private var sensitivityFactorView: SensitivityFactorView = {
        let view = SensitivityFactorView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    
    private var scaleDetailView: ScaleDetailView = {
        let view = ScaleDetailView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    
    
    //MARK: Methods
    
    private func setupView() {
        
        backgroundColor = .secondarySystemBackground
        
        addSubview(sensitivityFactorView)
        addSubview(scaleDetailView)
        
        sensitivityFactorView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        sensitivityFactorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        sensitivityFactorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        sensitivityFactorView.heightAnchor.constraint(equalToConstant: 125).isActive = true
        
        scaleDetailView.topAnchor.constraint(equalTo: sensitivityFactorView.bottomAnchor, constant: 16).isActive = true
        scaleDetailView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        scaleDetailView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        scaleDetailView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        
        
        
    }
    

}
