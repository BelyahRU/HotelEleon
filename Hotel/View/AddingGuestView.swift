//
//  AddingGuestView.swift
//  Hotel
//
//  Created by Александр Андреев on 11.07.2023.
//

import UIKit

class AddingGuestView: UIView {

    private lazy var guestDataSV = InfoAboutGuestSV()
//    private lazy var addPhotoButton: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = Resourses.Colors.lessBlueColor
//        button.setTitle("Добавить фото", for: .normal)
//        button.layer.cornerRadius = 25
//        return button
//    }()
    private lazy var addPhotoButton = AddImageButton()

    private lazy var topBlueView = BlueTopView("Новый постоялец")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
//MARK: adding subviews
private extension AddingGuestView {
    private func addSubviews() {
        addSubview(guestDataSV)
        addSubview(addPhotoButton)
        addSubview(topBlueView)
    }
}

//MARK: constraints setup fo view
private extension AddingGuestView {
    private func setupConstraints() {
        guestDataSV.snp.makeConstraints { make in
            make.width.equalTo(361)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(snp.bottom).inset(28)
        }
        addPhotoButton.snp.makeConstraints { make in
            make.width.equalTo(288)
            make.height.equalTo(288)
            make.centerX.equalToSuperview()
            make.top.equalTo(snp.top).offset(134)
        }
        topBlueView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(-5)
            make.trailing.equalToSuperview().offset(5)
            make.top.equalToSuperview()
            make.bottom.equalTo(topBlueView.snp.top).offset(111)
        }
    }
}
