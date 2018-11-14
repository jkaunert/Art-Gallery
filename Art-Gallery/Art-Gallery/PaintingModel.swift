import UIKit
import Foundation

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {

    let reuseIdentifier = "cell"
    
    var imageArray: [UIImage] = []
    var paintings: [Painting] = []
    
    
    
    weak var tableView: UITableView?
    
    
    override init(){
        
            for count in 1 ... 12 {
                let imageName = "Image\(count)"
                if let validImage = UIImage(named: imageName) {
                    let painting = Painting(validImage)
                    paintings.append(painting)
                    print(paintings)
                }
                
            }
        
            
        }
    
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell) else {fatalError("The cell does not exist(tappedLikeButton)")}
        paintings[indexPath.row].isLiked.toggle()

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? PaintingTableViewCell else {return UITableViewCell()}
        cell.imageView?.image = paintings[indexPath.row].image
        cell.delegate = self
        return cell
    }

}
