//
//  BigCell.swift
//  HealthyLiftPal
//
//  Created by COMATOKI on 2022-12-25.
//

import UIKit

class BigCell: UICollectionViewCell {
    
    var bgImageView: UIImageView!
    var titleLabel: UILabel!

    override func draw(_ rect: CGRect) {
        setupUIs()
    }
    
    fileprivate func setupUIs() {
        self.layer.cornerRadius = 8
        
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(bgImageView)
        bgImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        bgImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        bgImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        bgImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titleLabel)
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
        
        
    }

}
