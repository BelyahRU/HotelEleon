//
//  blueTopView.swift
//  Hotel
//
//  Created by Александр Андреев on 12.07.2023.
//

import UIKit
import SnapKit

class BlueTopView: UIView {
    
    private lazy var newGuestLabel: UILabel = {
        let label = UILabel()
        //label.text = "Новый постоялец"
        label.textColor = .white
        label.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 22)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var saveNewGuestButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: Resourses.Images.checkmark), for: .normal)
        return button
    }()
    
    private var titleL: String
    
    init(_ title: String) {
        self.titleL = title // Установка значения для titleL
        super.init(frame: .zero) // Вызов designated инициализатора с пустым фреймом
        commonInit()
    }
        
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    private func commonInit() {
            settingForView()
            changeTitle()
            addSubviews()
            setupConstraints()
    }

}



private extension BlueTopView {
    private func settingForView() {
        layer.cornerRadius = 25
        backgroundColor = Resourses.Colors.mainBlueColor
        
    }
    private func changeTitle() {
        newGuestLabel.text = titleL
    }
}

private extension BlueTopView {
    private func addSubviews() {
        addSubview(saveNewGuestButton)
        addSubview(newGuestLabel)
    }
}

private extension BlueTopView {
    private func setupConstraints() {
        saveNewGuestButton.snp.makeConstraints { make in
            make.width.equalTo(38)
            make.height.equalTo(38)
            make.top.equalToSuperview().offset(61)
            make.right.equalToSuperview().inset(15)
        }
        newGuestLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(67)
            make.centerX.equalToSuperview()
        }
    }
}
