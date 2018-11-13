import UIKit

class PaintingTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var portraitView: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate? = nil

    
    @IBAction func toggledAppreciation(_ sender: UIButton) {
        delegate?.tappedLikeButton(on: self)
    }
    
}
