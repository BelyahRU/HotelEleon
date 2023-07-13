//
//  CustomStepperView.swift
//  Hotel
//
//  Created by Александр Андреев on 12.07.2023.
//

import UIKit
import SnapKit

class CustomStepperView: UIView {
    
    private lazy var valueStepperLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)
        label.textColor = .black
        return label
    }()
    private lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.layer.cornerRadius = 8
        stepper.layer.shadowOpacity = 0
        stepper.stepValue = 1
        stepper.minimumValue = 0
        stepper.maximumValue = 3
        stepper.backgroundColor = Resourses.Colors.greenBlueColor
        return stepper
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        settingsForViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



private extension CustomStepperView {
    
    private func setupConstraints() {
        snp.makeConstraints { make in
            make.width.equalTo(116)
            make.height.equalTo(32)
        }
        stepper.snp.makeConstraints { make in
            make.right.equalToSuperview()
        }
        valueStepperLabel.snp.makeConstraints { make in
            make.right.equalTo(stepper.snp.left)
            make.height.equalToSuperview()
            //make.centerX.equalTo(stepper)
        }
    }
}
private extension CustomStepperView {
    
    private func settingsForViews() {
        valueStepperLabel.text = String(Int(stepper.value))
        backgroundColor = Resourses.Colors.greenBlueColor
        layer.cornerRadius = 8
    }
}
private extension CustomStepperView {
    
    private func addSubviews() {
        addSubview(valueStepperLabel)
        addSubview(stepper)
    }
}
