//
//  ViewController.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 09.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let images: [UIImage] = [UIImage(named: "1_1")!,
                                     UIImage(named: "1_2")!,
                                     UIImage(named: "1_3")!]

    lazy var hStack: UIStackView = {
        $0.axis = .horizontal
        $0.spacing = 10
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.backgroundColor = .systemGray6
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(hStack)
        setConstraint()
        
        images.forEach {
            let imageView = customImageView(image: $0)
            hStack.addArrangedSubview(imageView)
        }

    }

    private func setConstraint() {
        NSLayoutConstraint.activate([
            hStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            hStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            hStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            hStack.heightAnchor.constraint(equalToConstant: 100)
        ])
    }

}


