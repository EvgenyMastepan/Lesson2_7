//
//  LabelView.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 09.12.2024.
//

import UIKit

class customLabelView: UILabel {
    
    init(text: String, bold: Bool, size: CGFloat, color: UIColor) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        textColor = color
        numberOfLines = 0
        if bold {
            font = .systemFont(ofSize: size, weight: .black)
        } else {
            font = .systemFont(ofSize: size, weight: .regular)
        }
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
