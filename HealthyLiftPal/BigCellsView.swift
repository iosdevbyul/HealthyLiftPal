//
//  BigCellsView.swift
//  HealthyLiftPal
//
//  Created by COMATOKI on 2022-12-25.
//

import UIKit

class BigCellsView: UIView {

    var titleText = ""
    var imageName = ""
    var sectionLabel: UILabel!
    var caloriesLabel: UILabel!
    var bigCellCollectionView: UICollectionView {
        let bccv = UICollectionView()
        bccv.register(BigCell.classForCoder(), forCellWithReuseIdentifier: "bigCell")
        return bccv
    }
    var dietData: [DietResponse] = []

    override func draw(_ rect: CGRect) {
        setupUIs()
    }

    fileprivate func setupUIs() {
        sectionLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(sectionLabel)
        sectionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        sectionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        sectionLabel.textAlignment = .left
        
        caloriesLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(caloriesLabel)
        caloriesLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        caloriesLabel.topAnchor.constraint(equalTo: sectionLabel.topAnchor).isActive = true
        caloriesLabel.textAlignment = .right
        
        bigCellCollectionView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(bigCellCollectionView)
        bigCellCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        bigCellCollectionView.topAnchor.constraint(equalTo: sectionLabel.bottomAnchor, constant: 30).isActive = true
        bigCellCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        bigCellCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
    }

}

extension BigCellsView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dietData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bigCell", for: indexPath) as! BigCell
        cell.titleLabel.text = dietData[indexPath.row].title
        cell.bgImageView.image = UIImage(named: dietData[indexPath.row].image)
        return cell
    }
    
    
}
