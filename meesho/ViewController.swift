import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var buyNow: UIButton!
    @IBOutlet weak var segmaent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        setBuyNowButton()
        view.backgroundColor = .white
        img.image = UIImage(named: "yellow")
        lb.text = Int(stepper.value).description
      
       
    }
    func setBuyNowButton(){
        buyNow.layer.cornerRadius = 10
        buyNow.layer.masksToBounds = true
    }


    @IBAction func stepperAction(_ sender: UIStepper) {
        lb.text = Int(stepper.value).description
        price.text = ("\(362 * Int(Int(stepper.value).description)!)")
    }
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segmaent.selectedSegmentIndex == 0{
            //view.backgroundColor = .yellow
            img.image = UIImage(named: "yellow")
        }
        else if segmaent.selectedSegmentIndex == 1{
           // view.backgroundColor = .orange
            img.image = UIImage(named: "o")
        }
        else if segmaent.selectedSegmentIndex == 2{
            //view.backgroundColor = .green
            img.image = UIImage(named: "g")
        }
        else if segmaent.selectedSegmentIndex == 3{
           // view.backgroundColor = .blue
            img.image = UIImage(named: "b")
        }
    }
}

