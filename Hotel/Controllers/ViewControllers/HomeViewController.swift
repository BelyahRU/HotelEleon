//
//  HomeViewController.swift
//  Hotel
//
//  Created by Александр Андреев on 11.07.2023.
//

import UIKit

class HomeViewController: UIViewController {

    var homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConstraints()
        // Do any additional setup after loading the view.
    }
    
}

//MARK: add Subviews
private extension HomeViewController {
    private func addSubviews() {
        view.addSubview(homeView)
    }
}
//MARK: setup Constraints

private extension HomeViewController {
    private func setupConstraints() {
        homeView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.bottom.equalTo(homeView.snp.top).offset(755)
            make.right.equalToSuperview()
        }
    }
    
}
