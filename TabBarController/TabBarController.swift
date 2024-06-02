//
//  TabBarController.swift
//  Tracker
//
//  Created by gimon on 02.06.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let trackersViewController = TrackersViewController()
        trackersViewController.tabBarItem = UITabBarItem(
            title: "Трекеры",
            image: UIImage(named: "TrackersImage"),
            selectedImage: nil
        )
        
        let statisticViewController = StatisticViewController()
        statisticViewController.tabBarItem = UITabBarItem(
            title: "Статистика",
            image: UIImage(named: "StatisticImage"),
            selectedImage: nil
        )
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .ypBlue
        self.viewControllers = [trackersViewController, statisticViewController]
    }
}
