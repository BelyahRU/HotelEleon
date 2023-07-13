//
//  MainTabBarController.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import Foundation
import UIKit
import SnapKit

class MainTabBarController: UITabBarController {
    
    
    var customTabBarView: UIView  = {
        let view = UIView()
        // to make the cornerRadius of coustmeTabBarView
        view.backgroundColor = Resourses.Colors.mainBlueColor
        view.layer.cornerRadius = 25
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.clipsToBounds = true
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomTabBar()
        generateTabBar()
        setupView()
        
    }
    
}
//MARK: settings for TabBarController
private extension MainTabBarController {
    private func setupView() {
        tabBar.unselectedItemTintColor = .white
        view.backgroundColor = .white
    }
    
}

//MARK: adding Items to TabBar
private extension MainTabBarController {
    private func generateTabBar() {
        viewControllers = [
            generateVC(viewController: HomeViewController(), image: UIImage(named: Resourses.IconsTabBar.homeIcon)!),
            generateVC(
                viewController: GuestsViewController(),
                image: UIImage(named: Resourses.IconsTabBar.guestsIcon)!),
            generateVC(
                viewController: AddGuestViewController(),
                image: UIImage(named: Resourses.IconsTabBar.addGuestIcon)!),
            generateVC(
                viewController: RoomsViewController(),
                image: UIImage(named: Resourses.IconsTabBar.roomsIcon)!),
            generateVC(
                viewController: AddRoomViewController(),
                image: UIImage(named: Resourses.IconsTabBar.addRoomIcon)!),
        ]
    }
    
    private func generateVC(viewController: UIViewController, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.image = image
        return viewController
    }
}


//MARK: settings for tabBar background View
private extension MainTabBarController {
    
    private func setupCustomTabBar() {
        view.addSubview(customTabBarView)
        //хуйня чтобы таб бар отображался поверх вьюшки
        view.bringSubviewToFront(self.tabBar)
        customTabBarView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(-5)
            make.trailing.equalToSuperview().offset(5)
            make.height.equalTo(101)
            make.width.equalTo(403)
            make.top.equalToSuperview().offset(755)
        }
    }
}
