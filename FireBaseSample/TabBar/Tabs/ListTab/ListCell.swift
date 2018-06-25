//
//  ListCell.swift
//  FireBaseSample
//
//  Created by Sebastian Strus on 2018-06-18.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit
import Cosmos

class ListCell: UITableViewCell {
    
    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.setCellShadow()
        return view
    }()
    
    let pictureImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.backgroundColor = .red
        return iv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 26)
        return label
    }()
    
    let cosmosView: CosmosView = {
        let cv = CosmosView()
        cv.settings.updateOnTouch = true
        cv.settings.fillMode = .half
        cv.settings.starSize = 30
        cv.settings.starMargin = 5
        cv.settings.filledColor = UIColor.orange
        cv.settings.emptyBorderColor = UIColor.orange
        cv.settings.filledBorderColor = UIColor.orange
        return cv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    func setup() {
        backgroundColor = AppColors.SILVER_GREY
        addSubview(cellView)
        cellView.addSubview(pictureImageView)
       
        let stackView = UIStackView(arrangedSubviews: [titleLabel, cosmosView])
        stackView.axis = .vertical
        stackView.backgroundColor = UIColor.blue
        stackView.distribution = .fillProportionally
        stackView.spacing = 4
        cellView.addSubview(stackView)
        
        
        cellView.setAnchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, paddingTop: 4, paddingLeft: 8, paddingBottom: 4, paddingRight: 8)
        
        pictureImageView.setAnchor(top: cellView.topAnchor, leading: cellView.leadingAnchor, bottom: cellView.bottomAnchor, trailing: nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 0, width: 60, height: 60)
        pictureImageView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        
        stackView.setAnchor(top: cellView.topAnchor, leading: nil, bottom: cellView.bottomAnchor, trailing: cellView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 5, paddingRight: 5, width: CGFloat(Device.SCREEN_WIDTH - 100), height: 60)
        stackView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension UIStackView {
    func addBackground(color: UIColor) {
        let subView = UIView(frame: bounds)
        subView.backgroundColor = color
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)
    }
    
}
