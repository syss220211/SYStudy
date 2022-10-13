import UIKit

// lazy -> larget data set에서 very small subset만을 사용할 때 사용
let indexs = 1..<5000

let images = indexs.lazy.filter { index -> Bool in
    print("[filter]")
    return index % 2 == 0
}.map { index -> String in
    print("[Map]")
    return "image_\(index)"
}

//print(images.suffix(3))

let lastThreeImages = images.suffix(3)
for img in lastThreeImages{
    print(img)
}
