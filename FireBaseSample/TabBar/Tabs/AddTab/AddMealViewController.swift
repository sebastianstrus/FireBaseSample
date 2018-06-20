import UIKit
import Cosmos
//import PlaygroundSupport

class AddMealViewController : UIViewController {
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = UIColor.lightGray
        return sv
    }()
    
    let mealImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let cosmosView: CosmosView = {
        let cv = CosmosView()
        cv.settings.updateOnTouch = true
        cv.settings.fillMode = .half
        cv.settings.starSize = 40
        cv.settings.starMargin = 5
        cv.settings.filledColor = UIColor.orange
        cv.settings.emptyBorderColor = UIColor.orange
        cv.settings.filledBorderColor = UIColor.orange
        return cv
    }()
    
    let mealNameTF: UILabel = {
        let tf = UILabel()
        tf.text = "Scroll Top"
        tf.backgroundColor = .red
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let labelOne: UILabel = {
        let label = UILabel()
        label.text = "Scroll Top"
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelTwo: UILabel = {
        let label = UILabel()
        label.text = "Scroll Bottom"
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save meal", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitleColor(UIColor.purple, for: .normal)
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar(title: "Add meal")
        setupViews()
        
        
        //        //add scrollview
        //        self.view.addSubview(scrollView)
        //        scrollView.setAnchor(top: view.topAnchor,
        //                             left: view.leftAnchor,
        //                             bottom: view.bottomAnchor,
        //                             right: view.rightAnchor,
        //                             paddingTop: 10,
        //                             paddingLeft: 10,
        //                             paddingBottom: 10,
        //                             paddingRight: 10)
        //
        //        //add image for a meal
        //        scrollView.addSubview(mealImageView)
        //        mealImageView.setAnchor(top: scrollView.topAnchor,
        //                           left: nil,
        //                           bottom: nil,
        //                           right: nil,
        //                           paddingTop: 10,
        //                           paddingLeft: 10,
        //                           paddingBottom: 0,
        //                           paddingRight: 10,
        //                           width: CGFloat(Device.SCREEN_WIDTH - 50),
        //                           height: CGFloat(Device.SCREEN_WIDTH - 50))
        //        mealImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        //
        //        scrollView.addSubview(cosmosView)
        //        cosmosView.setAnchor(top: nil,
        //                             left: nil,
        //                             bottom: nil,
        //                             right: nil,
        //                             paddingTop: 0,
        //                             paddingLeft: 0,
        //                             paddingBottom: 0,
        //                             paddingRight: 0,
        //                             width: CGFloat(Device.SCREEN_WIDTH - 50),
        //                             height: CGFloat(70))
        //        cosmosView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        
        //        scrollView.addSubview(mealNameTF)
        //        mealNameTF.setAnchor(top: nil,
        //                                left: nil,
        //                                bottom: nil,
        //                                right: nil,
        //                                paddingTop: 10,
        //                                paddingLeft: 10,
        //                                paddingBottom: 0,
        //                                paddingRight: 0,
        //                                width: CGFloat(Device.SCREEN_WIDTH - 50),
        //                                height: CGFloat(50))
        //        mealImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        //        scrollView.addSubview(labelOne)
        //        labelOne.setAnchor(top: scrollView.topAnchor,
        //                           left: scrollView.leftAnchor,
        //                           bottom: nil,
        //                           right: scrollView.rightAnchor,
        //                           paddingTop: 0,
        //                           paddingLeft: 10,
        //                           paddingBottom: 0,
        //                           paddingRight: 0)
        
        
        
        
        scrollView.addSubview(labelTwo)
        labelTwo.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 150.0).isActive = true
        labelTwo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 500).isActive = true
        labelTwo.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: 0).isActive = true
        labelTwo.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
        
        scrollView.addSubview(saveButton)
        saveButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 150.0).isActive = true
        saveButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 500).isActive = true
        saveButton.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -20).isActive = true
        saveButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20).isActive = true
    }
    
    
    func setupViews() {
        
        
        //mainStackView.setAnchor(top: scrollView.topAnchor, left: scrollView.leftAnchor, bottom: scrollView.bottomAnchor, right: scrollView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        

        
        //        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        //        //set layout for stackview
        //        stackView.setAnchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.frame.width - (Device.IS_IPHONE ? 60 : 300), height: Device.IS_IPHONE ? 310 : 620)
        //        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        //        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
}


