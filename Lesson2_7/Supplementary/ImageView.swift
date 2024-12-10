//
//  ImageView.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 09.12.2024.
//

import UIKit

class customImageView: UIImageView {
    override init(image: UIImage?) {
        super.init(image: image)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        layer.cornerRadius = 20
        contentMode = .scaleAspectFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
