
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var overlaidView: UIView!
    @IBOutlet weak var drawerContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DrawerViewController") as! DrawerViewController
        addChildViewController(vc)
        let drawerView = vc as DrawerView
        drawerView.configureDrawer(containerView: drawerContainer, overlaidView: overlaidView)
        drawerContainer.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
    
    
}

