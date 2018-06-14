//
//  MapViewController.swift
//  TabBarProg
//
//  Created by Sebastian Strus on 2018-06-12.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Swift.debugPrint("test")
        view.backgroundColor = .blue
        //navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Map"
        
    }
}
