//
//  AddGuestViewController.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import Foundation
import UIKit

class AddGuestViewController: UIViewController {
    
    private var addGuestView = AddingGuestView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConstraints()
    }
}
//MARK: setup Constraints
private extension AddGuestViewController {
    private func setupConstraints() {
        addGuestView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.bottom.equalTo(addGuestView.snp.top).offset(755)
            make.right.equalToSuperview()
        }
    }
}
//MARK: add Subviews
private extension AddGuestViewController {
    private func addSubviews() {
        view.addSubview(addGuestView)
        
    }
}
