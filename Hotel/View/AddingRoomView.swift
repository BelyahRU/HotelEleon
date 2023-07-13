//
//  addRoomView.swift
//  Hotel
//
//  Created by Александр Андреев on 11.07.2023.
//

import UIKit

class AddingRoomView: UIView {

    private lazy var topBlueView = BlueTopView("Новый номер")
    private lazy var addPhotoButton = AddImageButton()
    private lazy var informationSV = InfoAboutRoomSV()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
//MARK: adding subviews
private extension AddingRoomView {
    private func addSubviews() {
        addSubview(topBlueView)
        addSubview(addPhotoButton)
        addSubview(informationSV)
    }
}

private extension AddingRoomView {
    private func setupConstraints() {
        topBlueView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(-5)
            make.trailing.equalToSuperview().offset(5)
            make.top.equalToSuperview()
            make.bottom.equalTo(topBlueView.snp.top).offset(111)
        }
        addPhotoButton.snp.makeConstraints { make in
            make.width.equalTo(288)
            make.height.equalTo(288)
            make.centerX.equalToSuperview()
            make.top.equalTo(snp.top).offset(134)
        }
        informationSV.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.top.equalTo(addPhotoButton.snp.bottom).offset(22)
            make.height.equalTo(192)
                                
        }
    }
}

private extension AddingRoomView {
    private func fsg() {
        
    }
}
