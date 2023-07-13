//
//  InfoAboutGuestSV.swift
//  Hotel
//
//  Created by Александр Андреев on 11.07.2023.
//

import UIKit

class InfoAboutGuestSV: UIStackView {

    private lazy var fullNameLabel = UILabel()
    
    private lazy var fullNameTF = UITextField()
    
    private lazy var yearOfBirthLabel = UILabel()
    
    private lazy var yearOfBirthTF = UITextField()
    
    private lazy var adressLabel = UILabel()
    
    private lazy var adressTF = UITextField()
    
    private lazy var purposeOfArrivalLabel = UILabel()
    
    private lazy var purposeOfArrivalTF = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStackView()
        addSubviews()
        editingElements()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: settings for Stack View
private extension InfoAboutGuestSV {
    private func setupStackView() {
        axis = .vertical
        backgroundColor = .white
        spacing = 7
        
    }
}

//MARK: setup Constraints
private extension InfoAboutGuestSV {
    private func setupConstraints() {
        
    }
}

//MARK: adding Subviews
private extension InfoAboutGuestSV {
    private func addSubviews() {
        addArrangedSubview(fullNameLabel)
        addArrangedSubview(fullNameTF)
        addArrangedSubview(yearOfBirthLabel)
        addArrangedSubview(yearOfBirthTF)
        addArrangedSubview(adressLabel)
        addArrangedSubview(adressTF)
        addArrangedSubview(purposeOfArrivalLabel)
        addArrangedSubview(purposeOfArrivalTF)
    }
}
//MARK: settings for labels and TextFields
private extension InfoAboutGuestSV {
    
    private func editingElements() {
        fullNameLabel = setupLabel(label: fullNameLabel, text: "Фамилия Имя Отчество")
        yearOfBirthLabel = setupLabel(label: yearOfBirthLabel, text: "Год рождения")
        adressLabel = setupLabel(label: adressLabel, text: "Адрес")
        purposeOfArrivalLabel = setupLabel(label: purposeOfArrivalLabel, text: "Цель прибытия")
        fullNameTF = setupTextField(textField: fullNameTF)
        yearOfBirthTF = setupTextField(textField: yearOfBirthTF)
        adressTF = setupTextField(textField: adressTF)
        purposeOfArrivalTF = setupTextField(textField: purposeOfArrivalTF)
    }
    
    private func setupLabel(label: UILabel, text: String) -> UILabel {
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)
        label.text = text
        return label
    }
    
    private func setupTextField(textField: UITextField) -> UITextField {
        textField.backgroundColor = Resourses.Colors.lessBlueColor
        
        //????
        textField.layer.cornerRadius = 19
        textField.textAlignment = .center
        setupConstrainsForTFs(textField: textField)
        return textField
    }
    
    private func setupConstrainsForTFs(textField: UITextField) {
        textField.snp.makeConstraints { make in
            make.width.equalTo(361)
            make.height.equalTo(36)
            make.centerX.equalToSuperview()
        }
    }
    private func setupConstraintsForLabels(label: UILabel) {
        label.snp.makeConstraints { make in
            make.width.equalTo(361)
            make.height.equalTo(24)
        }
    }
    
}
