//
//  ViewController.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var tabBar = MainTabBarController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        addSubviews()
        setupConstraints()
        
    }


}

extension ViewController {
    func addSubviews() {
        
    }
}

//MARK: setup Constrains
extension ViewController {
    
    func setupConstraints() {
        
//        tab.snp.makeConstraints { make in
//            make.leading.equalToSuperview()
//            make.trailing.equalToSuperview()
//            make.top.equalToSuperview()
//            make.bottom.equalToSuperview()
//        }
    }
}

