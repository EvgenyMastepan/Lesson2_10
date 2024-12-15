//
//  LabelView.swift
//  Lesson2_10
//
//  Created by Evgeny Mastepan on 15.12.2024.
//

import UIKit

class LabelView: UILabel {
    init(font: UIFont = .systemFont(ofSize: 16, weight: .regular), color: UIColor = .black, frameSize: CGRect, aligment: NSTextAlignment = .left) {
        super.init(frame: .zero)
        self.font = font
        self.frame = frameSize
        self.textAlignment = aligment
//        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = color
        self.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
