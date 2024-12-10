//
//  ContentViewController.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 09.12.2024.
//

import UIKit

class ContentViewController: UIViewController, ContentViewControllerProtocol {
    
    let leftIndent: CGFloat = 15
    let tableData = Card.cards
    
    var numPage: Int
    
    lazy var scrollView: UIScrollView = {
        $0.contentInsetAdjustmentBehavior = .never
        $0.backgroundColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubview(scrollViewContent)
        return $0
    }(UIScrollView())
    
    lazy var topImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 20
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var topText = CustomLabelView(font: .systemFont(ofSize: 24, weight: .black))
    lazy var exText = CustomLabelView(color: .black, contentMode: .right)
    lazy var mainText = CustomLabelView(font: .systemFont(ofSize: 14, weight: .regular), color: .black)
    
    lazy var scrollViewContent: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        $0.addSubviews(topImage, topText, exText, mainText)
        return $0
    }(UIView())
    
    init(numPage: Int){
        self.numPage = numPage
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setContent()
        view.addSubview(scrollView)
        setupConstraint()
    }
    
    func setContent(){
        let content = Card.cards[numPage]
        topImage.image = UIImage(named: content.image)
        topText.text = content.titul
        exText.text = content.extext
        mainText.text = content.maintext
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            scrollViewContent.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollViewContent.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            scrollViewContent.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            scrollViewContent.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            scrollViewContent.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            topImage.topAnchor.constraint(equalTo: scrollViewContent.topAnchor, constant: leftIndent),
            topImage.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: leftIndent),
            topImage.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -leftIndent),
            topImage.heightAnchor.constraint(equalToConstant: 171),
            
            topText.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: leftIndent),
            topText.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: leftIndent),
            topText.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -85),
            topText.heightAnchor.constraint(equalToConstant: 24),
            
            exText.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: leftIndent),
            exText.leadingAnchor.constraint(equalTo: topText.trailingAnchor),
            exText.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -leftIndent),
            exText.heightAnchor.constraint(equalToConstant: 24),
            
            mainText.topAnchor.constraint(equalTo: topText.bottomAnchor, constant: leftIndent),
            mainText.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: leftIndent),
            mainText.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -leftIndent),
            mainText.bottomAnchor.constraint(equalTo: scrollViewContent.bottomAnchor, constant: -leftIndent)
        ])
    }
    
    
}


