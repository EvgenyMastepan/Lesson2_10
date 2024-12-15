//
//  ViewController.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 14.12.2024.
//

import UIKit

class ViewController: UIViewController {

    let data = CollectionData.incomingData()
    lazy var collectionView: UICollectionView = {
        $0.dataSource = self
        $0.register(NameCell.self, forCellWithReuseIdentifier: NameCell.identifier)
        $0.register(BookCell.self, forCellWithReuseIdentifier: BookCell.identifier)
        $0.register(NewsCell.self, forCellWithReuseIdentifier: NewsCell.identifier)
        $0.register(BannerCell.self, forCellWithReuseIdentifier: BannerCell.identifier)
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: setLayout()))
    
    private func setLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { section, _ in
            switch section {
            case 0: return self.setNameSection()
            case 1: return self.setBookSection()
            case 2: return self.setNewsSection()
            case 3: return self.setBannerSection()
            default: return self.setNameSection()
            }
            
        }
    }
    
    private func setNameSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(100),
                                               heightDimension: .absolute(104))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 30, bottom: 40, trailing: 30)
        return section
        
    }
    
    private func setBookSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8),
                                               heightDimension: .estimated(86))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 3)
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
    
    private func setNewsSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.7),
                                               heightDimension: .absolute(152))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
    
    private func setBannerSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                               heightDimension: .absolute(216))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(collectionView)
        
    }


}


