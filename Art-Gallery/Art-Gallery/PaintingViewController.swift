import UIKit

class PaintingViewController: UIViewController {

    let reuseIdentifier = "cell"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()

    }

    @IBOutlet weak var tableView: UITableView!
    
    
   
}

