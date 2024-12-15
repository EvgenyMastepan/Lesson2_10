//
//  NameCell.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//

import UIKit



class NameCell: UICollectionViewCell, CellProtocol {

    
    static let identifier: String = "NameCell"
    
    lazy var nameImage = ImageView(round: 40, frameSize: CGRect(x: 0, y: 0, width: 80, height: 80))
    lazy var nameLabel = LabelView(font: .systemFont(ofSize: 10, weight: .regular), frameSize: CGRect(x: 0, y: nameImage.frame.maxY + 5, width: frame.width, height: 20), aligment: .center)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        backgroundColor = .white
        contentView.addSubview(nameImage)
        contentView.addSubview(nameLabel)
    }
    func setupCell(item: CollectionItem) {
        nameImage.image = UIImage(named: item.image)
        nameLabel.text = item.name
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
