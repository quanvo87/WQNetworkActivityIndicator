import UIKit
import WQNetworkActivityIndicator

class ViewController: UIViewController {
    private var aStarted = false
    private var bStarted = false

    override func viewDidLoad() {
        super.viewDidLoad()
        WQNetworkActivityIndicator.shared.timeout = 0
    }

    @IBAction func startA(_ sender: Any) {
        if !aStarted {
            aStarted = true
            WQNetworkActivityIndicator.shared.show()
        }
    }

    @IBAction func stopA(_ sender: Any) {
        aStarted = false
        WQNetworkActivityIndicator.shared.hide()
    }

    @IBAction func startB(_ sender: Any) {
        if !bStarted {
            bStarted = true
            WQNetworkActivityIndicator.shared.show()
        }
    }

    @IBAction func stopB(_ sender: Any) {
        bStarted = false
        WQNetworkActivityIndicator.shared.hide()
    }
}
