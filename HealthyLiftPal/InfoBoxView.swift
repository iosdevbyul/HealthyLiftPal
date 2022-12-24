//
//  InfoBoxView.swift
//  HealthyLiftPal
//
//  Created by COMATOKI on 2022-12-25.
//

import UIKit

class InfoBoxView: UIView {
    
    var boxTitleLabel: UILabel!
    var contentLabel: UILabel!
    var percentLabel: UILabel!


    override func draw(_ rect: CGRect) {
        setupUIs()
    }
    
    fileprivate func setupUIs() {
        self.layer.cornerRadius = 8
        
        boxTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(boxTitleLabel)
        boxTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        boxTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        boxTitleLabel.textAlignment = .left
        
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(contentLabel)
        contentLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        contentLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        contentLabel.textAlignment = .center
        
        percentLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(percentLabel)
        percentLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
        percentLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        percentLabel.textAlignment = .center
        percentLabel.backgroundColor = .white
        percentLabel.layer.cornerRadius = 10
    }


}
