//
//  StartWindowView.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import Foundation
import UIKit

class StartWindowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: settings for View
extension StartWindowView {
    
    func setupView() {
        backgroundColor = UIColor(patternImage: UIImage(named: Resourses.IconsTabBar.addRoomsIcon)!)
    }
}
