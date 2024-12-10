//
//  CardCellView.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 10.12.2024.
//

import UIKit

class CardCellView: UITableViewCell, ControllerProtocol {
    let leftIndent: CGFloat = 15
    private let images: [UIImage] = [UIImage(named: "1_1")!,
                                     UIImage(named: "1_2")!,
                                     UIImage(named: "1_3")!]
    
    static let identifier: String = "CardCellView"
    
    
    
    lazy var mainView: UIView = {
        $0.backgroundColor = .systemGray6
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubviews(cardImage, hStack)
        images.forEach {
            let imageView = customImageView(image: $0)
//            imageView.translatesAutoresizingMaskIntoConstraints = false
            hStack.addArrangedSubview(imageView)
        }
        $0.addSubviews(cardButton)
        return $0
    }(UIView())
    
    lazy var cardImage: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var hStack: UIStackView = {
        $0.axis = .horizontal
        $0.spacing = 10
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.backgroundColor = .systemGray6
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    lazy var cardButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 20
        $0.backgroundColor = .black
        $0.setTitle("Подробно...", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        return $0
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(mainView)
        setupConstraint()
    }
    
    func setupCell(card: Card) {
        cardImage.image = UIImage(named: card.image)
        
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            mainView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            mainView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            mainView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            cardImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: leftIndent),
            cardImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: leftIndent),
            cardImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -leftIndent),
            cardImage.heightAnchor.constraint(equalToConstant: 180),
            
            hStack.topAnchor.constraint(equalTo: cardImage.bottomAnchor, constant: leftIndent),
            hStack.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: leftIndent),
            hStack.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -leftIndent),
            hStack.heightAnchor.constraint(equalToConstant: 100),
            
            cardButton.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: leftIndent),
            cardButton.topAnchor.constraint(equalTo: hStack.bottomAnchor, constant: leftIndent),
            cardButton.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -leftIndent),
            cardButton.heightAnchor.constraint(equalToConstant: 50),
            cardButton.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -leftIndent)
            ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
