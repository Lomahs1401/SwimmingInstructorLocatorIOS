//
//  HeroHelper.swift
//  SwimmingInstructorLocator
//
//  Created by Le Hoang Long on 23/03/2024.
//

import Foundation
import UIKit
import Hero

extension UIViewController {
    func disableHero() {
        navigationController?.hero.isEnabled = false
    }
    
    func enableHero() {
        hero.isEnabled = true
        navigationController?.hero.isEnabled = true
    }
    
    func showHero(_ viewController: UIViewController, navigationAnimationType: HeroDefaultAnimationType = .autoReverse(presenting: .slide(direction: .leading))) {
        viewController.hero.isEnabled = true
        navigationController?.hero.isEnabled = true
        navigationController?.hero.navigationAnimationType = navigationAnimationType
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension UINavigationController {
    func show(_ viewController: UIViewController, navigationAnimationType: HeroDefaultAnimationType = .autoReverse(presenting: .slide(direction: .leading))) {
        viewController.hero.isEnabled = true
        hero.isEnabled = true
        hero.navigationAnimationType = navigationAnimationType
        pushViewController(viewController, animated: true)
    }
}
