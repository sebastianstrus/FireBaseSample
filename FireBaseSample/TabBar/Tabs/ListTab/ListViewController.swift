//
//  ListViewController.swift
//  TabBarProg
//
//  Created by Sebastian Strus on 2018-06-12.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {//consider change to UITableViewController
    
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.separatorStyle = .none
        tv.allowsSelection = false
        return tv
    }()
    
    
    let myCellId = "myCellId"
    
    
    
    var allMeals: [Meal]  = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get data from FireBase
        Data.getMeals(complition: { (meals) in
            self.allMeals = meals
            self.tableView.reloadData()
        })
//
        setupNavigationBar(title: "List")
        setupTableView()
        
    }
    
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ListCell.self, forCellReuseIdentifier: myCellId)
        view.addSubview(tableView)
        tableView.setAnchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    
    // MARK: - UITableView delegate methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMeals.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: myCellId, for: indexPath) as! ListCell
        cell.titleLabel.text = allMeals[indexPath.item].title
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Device.IS_IPHONE ? 80 : 160
    }
}
