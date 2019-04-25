import UIKit

struct Painting {
    
    let image: UIImage
    var isLiked: Bool
    
    init(_ image: UIImage) {
        self.isLiked = false
        self.image = image
    }
}
