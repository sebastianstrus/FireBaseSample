//
//  MapViewController.swift
//  TabBarProg
//
//  Created by Sebastian Strus on 2018-06-12.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    
    let mapView: MKMapView = {
        let mv = MKMapView()
        return mv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar(title: "Map")
        setupMap()
    }
    
    func setupMap() {
        view.addSubview(mapView)
        mapView.setAnchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    

}
