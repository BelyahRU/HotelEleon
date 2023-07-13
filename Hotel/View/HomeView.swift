//
//  HomeView.swift
//  Hotel
//
//  Created by Александр Андреев on 11.07.2023.
//

import UIKit

class HomeView: UIView {
    
    private lazy var hotelNameLabel: UILabel = {
        let label = UILabel()
        // Создаем атрибутированную строку
        let text = "Hotel Eleon"
        let attributedText = NSMutableAttributedString(string: text)
        // Загружаем шрифт "AppleSDGothicNeo-Regular"
        if let customFont = UIFont(name: "AppleSDGothicNeo-Regular", size: 30) {
            attributedText.addAttribute(.font,
                                        value: customFont,
                                        range: NSRange(location: 0, length: 5)) // Для "Hotel"
        }
        if let customFont = UIFont(name: "AppleSDGothicNeo-Regular", size: 50) {
            attributedText.addAttribute(.font,
                                        value: customFont,
                                        range: NSRange(location: 6, length: 5)) // Для "Eleon"
        }
        // Устанавливаем атрибутованную строку в UILabel
        label.attributedText = attributedText
        label.numberOfLines = 0
        label.textColor = .white
        label.textAlignment = .center

        return label
    }()
    // быстрый подбор номера
    private lazy var quickNumberSelection: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 22)
        label.text = "Быстрый подбор номера:"
        label.textAlignment = .center
        return label
    }()

    private lazy var hotelEleonView: UIView = {
        let view = UIView()
        view.backgroundColor = Resourses.Colors.mainBlueColor
        view.layer.cornerRadius = 25
        //view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.clipsToBounds = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: settings for View

private extension HomeView {
    private func setupView() {
        //backgroundColor = .brown
    }
    
}

//MARK: add Subviews
private extension HomeView {
    private func addSubviews() {
        addSubview(hotelEleonView)
        hotelEleonView.addSubview(hotelNameLabel)
        addSubview(quickNumberSelection)
    }
}
//MARK: setup Constraints

private extension HomeView {
    private func setupConstraints() {
        hotelEleonView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.height.equalTo(163)
            make.width.equalTo(403)
        }
        hotelNameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(59)
            //make.bottom.equalTo(hotelEleonView.snp.bottom).offset(30)
            make.width.equalTo(146)
            make.centerX.equalToSuperview()
        }
        quickNumberSelection.snp.makeConstraints { make in
            make.width.equalTo(283)
            make.height.equalTo(26)
            make.centerX.equalToSuperview()
            make.top.equalTo(hotelNameLabel.snp.bottom).offset(15)
        }
    }
    
}
