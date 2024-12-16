//
//  BannerCell.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//
import UIKit
class BannerCell: UICollectionViewCell, CellProtocol {
    
    static let identifier: String = "BannerCell"
    
    lazy var newsImage = ImageView(round: 0, frameSize: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        layer.cornerRadius = 10
        backgroundColor = .white
        contentView.addSubview(newsImage)
    }
    func setupCell(item: CollectionItem) {
        newsImage.image = UIImage(named: item.image)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
