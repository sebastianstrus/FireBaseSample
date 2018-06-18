//
//  ViewController.swift
//  TabBarProg
//
//  Created by Sebastian Strus on 2018-06-12.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    func setupTabBar() {
        tabBar.barTintColor = .green
        

        let listController = createNavController(vc: ListViewController(), unselected: "list_gray", selected: "list_gray")
        listController.tabBarItem.title = "List".localized()
        let addController = createNavController(vc: AddViewController(), unselected: "add_gray", selected: "add_gray")
        addController.tabBarItem.title = "Add".localized()
        let mapController = createNavController(vc: MapViewController(), unselected: "map_gray", selected: "map_gray")
        mapController.tabBarItem.title = "Map".localized()
        let favoritesController = createNavController(vc: FavoritesViewController(), unselected: "favorites_gray", selected: "favorites_gray")
        favoritesController.tabBarItem.title = "Favorites".localized()
        let accountController = createNavController(vc: AccountViewController(), unselected: "account_gray", selected: "account_gray")
        accountController.tabBarItem.title = "Account".localized()

        //map, list, favorite, account
        viewControllers = [listController, addController, mapController, favoritesController, accountController]
        
        //set top margin
        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0)
        }
    }
}
