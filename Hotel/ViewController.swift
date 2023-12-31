//
//  ViewController.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var SV = InfoAboutRoomSV()
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
        tf.layer.cornerRadius = 20
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setupConstraints()
        
    }


}

extension ViewController {
    func addSubviews() {
        firstSV.addArrangedSubview(countGuestsLabel)
        firstSV.addArrangedSubview(stepperForGuests)
        secondSV.addArrangedSubview(countRoomsLabel)
        secondSV.addArrangedSubview(stepperForRooms)
        thirdSV.addArrangedSubview(numberLabel)
        thirdSV.addArrangedSubview(numberTF)
//        .addArrangedSubview(firstSV)
//        sv.addArrangedSubview(secondSV)
//        sv.addArrangedSubview(thirdSV)
//        sv.spacing = 24
//        sv.axis = .vertical
        view.addSubview(SV)
    }
}

//MARK: setup Constrains
extension ViewController {
    
    func setupConstraints() {
        countRoomsLabel.snp.makeConstraints { make in
            make.width.equalTo(192)
            make.height.equalTo(24)
        }
        countGuestsLabel.snp.makeConstraints { make in
            make.width.equalTo(192)
            make.height.equalTo(24)
        }
        numberLabel.snp.makeConstraints { make in
            make.width.equalTo(192)
            make.height.equalTo(24)
        }
        firstSV.snp.makeConstraints { make in
            make.height.equalTo(32)
            //make.centerX.equalToSuperview()
            //make.centerY.equalToSuperview()
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
        SV.snp.makeConstraints { make in
            make.right.equalToSuperview()
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}

