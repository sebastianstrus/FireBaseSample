//
//  Data.swift
//  FireBaseSample
//
//  Created by Sebastian Strus on 2018-06-24.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class Data {
    
    static func getMeals(complition: @escaping ([Meal]) -> Void) {
        DispatchQueue.global(qos: .userInteractive).async {
            
            //get data from FireBase
            let meals = [Meal(image: "1", title: "The Unforgiven", rating: 1.0),
                         Meal(image: "2", title: "Snuff", rating: 3.0),
                         Meal(image: "3", title: "Smells Like Teen Spirit", rating: 10.0),
                         Meal(image: "4", title: "Back In Black", rating: 8.0),
                         Meal(image: "5", title: "Chop Suey", rating: 2.0)]
            sleep(2)//for testing before using FireBase
            
            
            DispatchQueue.main.async {
                complition(meals)
            }
        }
    }
    
    //    func complition(data: [Meal]) {
    //
    //    }
    
}
