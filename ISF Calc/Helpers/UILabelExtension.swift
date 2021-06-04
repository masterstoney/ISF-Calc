//
//  UILabelExtension.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/17/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

extension UILabel {
    
    func underline(color: UIColor, thickness: CGFloat) {
        
        let lineView = UIView()
        lineView.backgroundColor = color
        lineView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(lineView)
        lineView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1).isActive = true
        lineView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        lineView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: thickness).isActive = true
        
    }
    
    
    
}
