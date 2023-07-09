//
//  MainTabBarController.swift
//  Hotel
//
//  Created by Александр Андреев on 09.07.2023.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        view.backgroundColor = .white
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateVC(
                viewController: GuestsViewController(),
                image: UIImage(named: Resourses.IconsTabBar.guestIcon)!),
            generateVC(
                viewController: AddGuestViewController(),
                image: UIImage(named: Resourses.IconsTabBar.addGuestIcon)!),
            generateVC(
                viewController: RoomsViewController(),
                image: UIImage(named: Resourses.IconsTabBar.roomsIcon)!),
            generateVC(
                viewController: AddRoomViewController(),
                image: UIImage(named: Resourses.IconsTabBar.addRoomsIcon)!),
        ]
    }
    
    private func generateVC(viewController: UIViewController, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.image = image
        return viewController
    }
}
