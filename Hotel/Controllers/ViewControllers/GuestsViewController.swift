//
//  GuestsViewController.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import Foundation
import UIKit

class GuestsViewController: UIViewController {
    
    var sdsdfs = CustomStepperView()
    var stepper = UIStepper()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //view.addSubview(sdsdfs)
        view.addSubview(sdsdfs)
        
        sdsdfs.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
