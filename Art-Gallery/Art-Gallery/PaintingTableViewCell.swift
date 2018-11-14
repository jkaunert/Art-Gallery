import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    let model = PaintingModel()
    
    @IBOutlet weak var portraitView: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?

    
    @IBAction func toggledAppreciation(_ sender: Any) {
        model.tappedLikeButton(on: self)
    }
    
}
