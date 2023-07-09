//
//  ViewController.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var startView = StartWindowView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConstraints()
    }


}

extension ViewController {
    func addSubviews() {
        view.addSubview(startView)
    }
}

//MARK: setup Constrains
extension ViewController {
    
    func setupConstraints() {
        startView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}

