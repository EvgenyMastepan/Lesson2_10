//
//  Extensions.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        data.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data[section].items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = data[indexPath.section].items[indexPath.item]
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NameCell.identifier, for: indexPath) as! NameCell
            cell.setupCell(item: item)
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookCell.identifier, for: indexPath) as! BookCell
            cell.setupCell(item: item)
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCell.identifier, for: indexPath) as! NewsCell
            cell.setupCell(item: item)
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCell.identifier, for: indexPath) as! BannerCell
            cell.setupCell(item: item)
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    
}

protocol CellProtocol {
    static var identifier: String { get }
    func setupCell(item: CollectionItem)
}
