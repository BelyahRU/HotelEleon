//
//  addPhotoButton.swift
//  Hotel
//
//  Created by Александр Андреев on 12.07.2023.
//

import UIKit

class AddImageButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSettingsForButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension AddImageButton {
    private func setupSettingsForButton() {
        backgroundColor = Resourses.Colors.lessBlueColor
        setTitle("Добавить фото", for: .normal)
        layer.cornerRadius = 25
    }
}
