//
//  InfoAboutRoomSV.swift
//  Hotel
//
//  Created by Александр Андреев on 13.07.2023.
//

import UIKit

class InfoAboutRoomSV: UIStackView {

    private lazy var countGuestsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resourses.Font.standartFont, size: 20)
        label.text = "Количество мест"
        return label
    }()
    private lazy var countRoomsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resourses.Font.standartFont, size: 20)
        label.text = "Количество комнат"
        return label
    }()
    private lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resourses.Font.standartFont, size: 20)
        label.text = "Номер"
        return label
    }()
    
    private lazy var stepperForGuests = CustomStepperView()
    
    private lazy var stepperForRooms = CustomStepperView()
    
    private lazy var numberTF: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = Resourses.Colors.greenBlueColor
        tf.layer.cornerRadius = 15
        tf.textAlignment = . center
        tf.placeholder = "ANNN"
        tf.font = UIFont(name: Resourses.Font.standartFont, size: 20)
        return tf
    }()
    
    private lazy var firstSV: UIStackView = {
        let sv = UIStackView()
        sv.spacing = 53
        sv.axis = .horizontal
        return sv
    }()
    private lazy var secondSV: UIStackView = {
        let sv = UIStackView()
        sv.spacing = 53
        sv.axis = .horizontal
        return sv
    }()
    private lazy var thirdSV: UIStackView = {
        let sv = UIStackView()
        sv.spacing = 53
        sv.axis = .horizontal
        return sv
    }()
    
    private lazy var equipmentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resourses.Font.standartFont, size: 20)
        label.text = "Оборудование"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSettingsForViews()
        addSubviews()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension InfoAboutRoomSV {
    func addSubviews(){
        firstSV.addArrangedSubview(countGuestsLabel)
        firstSV.addArrangedSubview(stepperForGuests)
        secondSV.addArrangedSubview(countRoomsLabel)
        secondSV.addArrangedSubview(stepperForRooms)
        thirdSV.addArrangedSubview(numberLabel)
        thirdSV.addArrangedSubview(numberTF)
        addArrangedSubview(firstSV)
        addArrangedSubview(secondSV)
        addArrangedSubview(thirdSV)
        addArrangedSubview(equipmentLabel)
    }
}

extension InfoAboutRoomSV {
    func setupConstraints(){
        equipmentLabel.snp.makeConstraints { make in
            make.width.equalTo(192)
            make.height.equalTo(24)
        }
        firstSV.snp.makeConstraints { make in
            make.height.equalTo(32)
        }
        secondSV.snp.makeConstraints { make in
            make.height.equalTo(32)
        }
        thirdSV.snp.makeConstraints { make in
            make.height.equalTo(36)
        }
        numberTF.snp.makeConstraints { make in
            make.height.equalTo(36)
            make.width.equalTo(90)
        }
    }
}

extension InfoAboutRoomSV {
    func setupSettingsForViews(){
        spacing = 24
        axis = .vertical
    }
}
