//
//  ImageView.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//

import UIKit

class ImageView: UIImageView {
    init(round: CGFloat = 0, frameSize: CGRect) {
        super.init(frame: .zero)
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
        self.layer.cornerRadius = round
        self.frame = frameSize
//        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
