import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    weak var delegateV: PaintingTableViewCellDelegate?

    @IBAction func toggledAppreciation(_ sender: Any) {
        delegateV?.tappedLikeButton(on: self)
    }
    
}
