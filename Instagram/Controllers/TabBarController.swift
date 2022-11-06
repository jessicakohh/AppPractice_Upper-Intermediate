//
//  TapbarController.swift
//  Instagram
//
//  Created by juyeong koh on 2022/11/06.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tabbar들
        let feedViewController = UIViewController()
        feedViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        let profileViewController = UIViewController()
        profileViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
        
        viewControllers = [ feedViewController, profileViewController ]
    }
}
