import UIKit
import Cosmos
//import PlaygroundSupport

class AddMealViewController : UIViewController {
    
    
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.backgroundColor = .brown
        sv.contentSize.height = 2000
        sv.contentSize.width = CGFloat(Device.SCREEN_WIDTH)
        return sv
    }()
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.text = "Top label"
        label.backgroundColor = UIColor.lightGray
        return label
    }()
    
    let bottomLabel: UILabel = {
        let label = UILabel()
        label.text = "Bottom label"
        label.backgroundColor = UIColor.lightGray
        return label
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
    
    
    let testView: UIView = {
        let tv = UIView()
        tv.backgroundColor = .yellow
        return tv
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar(title: "Add meal")
        setupScrollView()
        setupViews()

    }
    
    
    func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.setAnchor(top: view.topAnchor, leading: view.leftAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 20, paddingRight: 20)
    }
    
    func setupViews() {
        [testView, topLabel, bottomLabel].forEach { scrollView.addSubview($0)}
        
        testView.setAnchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: scrollView.bottomAnchor, trailing: scrollView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)

        topLabel.setAnchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: scrollView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        //bottomLabel.setAnchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: scrollView.trailingAnchor, paddingTop: 450, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
    }

    
}


