//
//  ViewController.swift
//  Lesson2_7
//
//  Created by Evgeny Mastepan on 09.12.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    let tableData = Card.cards
    
    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.delegate = self
        $0.register(CardCellView.self, forCellReuseIdentifier: CardCellView.identifier)
        return $0
    }(UITableView(frame: view.frame, style: .plain))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubviews(tableView)
    }
}


