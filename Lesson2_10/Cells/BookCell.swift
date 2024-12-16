//
//  BookCell.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//

import UIKit
class BookCell: UICollectionViewCell, CellProtocol {

    
    static let identifier: String = "BookCell"
    
    lazy var bookImage = ImageView(round: 5, frameSize: CGRect(x: 10, y: 10, width: 45, height: 75))
    lazy var textLabel = LabelView(font: .systemFont(ofSize: 12, weight: .regular), frameSize: CGRect(x: bookImage.frame.maxX + 5, y: 5, width: 227, height: bookImage.frame.height))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        layer.cornerRadius = 10
        backgroundColor = .systemGray6
        contentView.addSubview(bookImage)
        contentView.addSubview(textLabel)
    }
    func setupCell(item: CollectionItem) {
        bookImage.image = UIImage(named: item.image)
        textLabel.text = item.text
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
