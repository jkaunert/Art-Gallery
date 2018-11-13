import UIKit
import Foundation

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {

    let reuseIdentifier = "cell"
    static let shared = PaintingModel()
    
    private override init(){
        var imageArray: [UIImage] = []
        func loadImages(image: String) -> [UIImage] {
//            var imageArray: [UIImage] = []
            for count in 1 ... 12 {
               let imageName = "image\(count)"
                if let validImage = UIImage(named: imageName) {
                    imageArray.append(validImage)
                }
                
            }
            print(imageArray)
            return imageArray
        
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    var paintings: [Painting] = []
    
    
    
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        cell.likeButton.setTitle("Like", for: .normal)
        cell.likeButton.setTitle("Unlike", for: .highlighted)
        //cell.portraitView.image = imageArray // fix this
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(paintings.count)
        return Int(paintings.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        
        return cell
    }
    
}
