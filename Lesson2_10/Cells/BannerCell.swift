//
//  BannerCell.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//

import UIKit

class BannerCell: UICollectionViewCell, CellProtocol {

    
    static let identifier: String = "BannerCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        backgroundColor = .white
    }
    func setupCell(item: CollectionItem) {
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}