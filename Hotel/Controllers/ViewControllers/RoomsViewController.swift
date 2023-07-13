//
//  RoomsViewController.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import Foundation
import UIKit

class RoomsViewController: UIViewController {
    
    var sff = InfoAboutGuestSV()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(sff)
        sff.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
}
