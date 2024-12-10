//
//  LabelView.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 09.12.2024.
//

import UIKit

class CustomLabelView: UILabel {
    
    init(text: String = "", font: UIFont = .systemFont(ofSize: 14), color: UIColor = .black, textAlignment: NSTextAlignment = .left){
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = font
        self.textColor = color
        self.numberOfLines = 0
        self.textAlignment = textAlignment
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
