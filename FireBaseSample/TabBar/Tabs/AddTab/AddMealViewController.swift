import UIKit
//import PlaygroundSupport

class AddMealViewController : UIViewController {
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = UIColor.lightGray
        return sv
    }()
    
    let mealTitleLabel: UILabel = {
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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add scrollview
        self.view.addSubview(scrollView)
        scrollView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        // add labelOne to the scroll view
        scrollView.addSubview(mealTitleLabel)
        mealTitleLabel.setAnchor(top: scrollView.topAnchor, left: scrollView.leftAnchor, bottom: nil, right: scrollView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        // add labelTwo to the scroll view
        scrollView.addSubview(labelTwo)
        
        // pin labelTwo at 400-pts from the left
        labelTwo.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 200.0).isActive = true
        
        // pin labelTwo at 1000-pts from the top
        labelTwo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 700).isActive = true
        
        // "pin" labelTwo to right & bottom with 16-pts padding
        labelTwo.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -16.0).isActive = true
        labelTwo.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16.0).isActive = true
        
    }
    
}
