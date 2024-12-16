//
//  NewsCell.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//

import UIKit
class NewsCell: UICollectionViewCell, CellProtocol {
    
    static let identifier: String = "NewsCell"
    
    lazy var newsImage = ImageView(round: 0, frameSize: CGRect(x: 0, y: 0, width: 323, height: 152))
    lazy var titulNewsLabel = LabelView(font: .systemFont(ofSize: 24, weight: .black), color: .red, frameSize: CGRect(x: 10, y: 10, width: frame.width - 20, height: 29))
    lazy var newsLabel = LabelView(font: .systemFont(ofSize: 12, weight: .regular), color: .red, frameSize: CGRect(x: 10, y: titulNewsLabel.frame.maxY + 10, width: frame.width - 20, height: 24))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        layer.cornerRadius = 10
        backgroundColor = .white
        contentView.addSubview(newsImage)
        contentView.addSubview(titulNewsLabel)
        contentView.addSubview(newsLabel)
    }
    func setupCell(item: CollectionItem) {
        newsImage.image = UIImage(named: item.image)
        titulNewsLabel.text = item.header
        newsLabel.text = item.text
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
