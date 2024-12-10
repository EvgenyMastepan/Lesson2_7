//
//  Protocols.swift
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
