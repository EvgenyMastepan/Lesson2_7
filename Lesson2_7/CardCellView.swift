//
//  CardCellView.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 10.12.2024.
//

import UIKit

class CardCellView: UITableViewCell, ControllerProtocol {
    let leftIndent: CGFloat = 15

    //Почему тут не подтягивается из данных?
    var images: [String] = ["1_1","1_2","1_3"]
    
    static let identifier: String = "CardCellView"
    
    lazy var mainView: UIView = {
        $0.backgroundColor = .systemGray6
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubviews(cardImage, topText, mainText, hStack, cardButton)
//        images.forEach {
//            let imageView = customImageView(image: UIImage(named: $0))
//            hStack.addArrangedSubview(imageView)
//        }
        return $0
    }(UIView())
    
    lazy var cardImage: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var topText = CustomLabelView(font: .systemFont(ofSize: 20, weight: .black), color: .white)
    lazy var mainText = CustomLabelView(font: .systemFont(ofSize: 14, weight: .regular), color: .white)
    
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
        // Вот тут же должно заполняться.
        images = card.exImage
        images.forEach {
            let imageView = customImageView(image: UIImage(named: $0))
            hStack.addArrangedSubview(imageView)
        }
        topText.text = card.titul
        mainText.text = card.maintext
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
            
            topText.topAnchor.constraint(equalTo: cardImage.topAnchor, constant: leftIndent),
            topText.leadingAnchor.constraint(equalTo: cardImage.leadingAnchor, constant: leftIndent),
            topText.trailingAnchor.constraint(equalTo: cardImage.trailingAnchor, constant: leftIndent),
            topText.heightAnchor.constraint(equalToConstant: 24),
            
            mainText.topAnchor.constraint(equalTo: mainText.bottomAnchor, constant: leftIndent),
            mainText.leadingAnchor.constraint(equalTo: cardImage.leadingAnchor, constant: leftIndent),
            mainText.trailingAnchor.constraint(equalTo: cardImage.trailingAnchor, constant: leftIndent),
            mainText.bottomAnchor.constraint(equalTo: cardImage.bottomAnchor, constant: -leftIndent),
            
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
