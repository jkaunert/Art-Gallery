import UIKit
import Foundation

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {

    let reuseIdentifier = "cell"
    
   weak var tableView: UITableView?
    var paintings: [Painting] = []
    
    
    
    override init(){
            var imageArray: [UIImage] = []
            for count in 1...12 {
                let imageName = "Image\(count)"
                if let image = UIImage(named: imageName) {
                    imageArray.append(image)
                }
            }
        
            for image in imageArray {
                paintings.append(Painting(image))
            }
            print(paintings)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell) else {fatalError("The cell does not exist (tappedLikeButton)")}
        paintings[indexPath.row].isLiked.toggle()
        cell.likeButton.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PaintingTableViewCell else { fatalError("Yeah you messed up...")}
        cell.delegateV = self
        cell.portraitView.image = paintings[indexPath.row].image
        
        let title = "Like"
        cell.likeButton?.setTitle(title, for: [])
        cell.likeButton.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
        
        return cell
    }

}
