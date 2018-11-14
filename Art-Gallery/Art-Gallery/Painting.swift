import UIKit

struct Painting {
    let image: UIImage
    var isLiked: Bool
    
    init(_ image: UIImage, _ isLiked: Bool = false) {
        self.isLiked = isLiked
        self.image = image
    }
    
    
}
