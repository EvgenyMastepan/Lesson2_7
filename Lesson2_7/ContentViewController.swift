//
//  ContentViewController.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 09.12.2024.
//

import UIKit

protocol ControllerProtocol: AnyObject {
    func setupConstraint()
}

protocol ContentViewControllerProtocol: ControllerProtocol {
    var scrollView: UIScrollView { get set }
    var scrollViewContent: UIView { get set }
}

class ContentViewController: UIViewController, ContentViewControllerProtocol {
    
    lazy var scrollView: UIScrollView = {
        $0.contentInsetAdjustmentBehavior = .never
        $0.backgroundColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubview(scrollViewContent)
        return $0
    }(UIScrollView())
    
    lazy var topImage = customImageView(image: UIImage(named: "1"))
    lazy var topText = customLabelView(text: "1", bold: true, size: 20, color: .black)
    lazy var exText = customLabelView(text: "2", bold: false, size: 14, color: .black)
    lazy var mainText = customLabelView(text: "", bold: false, size: 14, color: .black)
    
    lazy var scrollViewContent: UIView = {
        $0.addSubviews(topText, topImage, exText, mainText)
        return $0
    }(UIView())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(scrollView)
        setupConstraint()
    }
    
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor)
            
            
            
            
        ])
    }
    
    
}

//extension UIView {
//    func addSubviews(_ views: UIView...) {
//        views.forEach {
//            self.addSubview($0)
//        }
//    }
//}
