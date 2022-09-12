//
//  ChattingCollectionViewCell.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/13.
//

import UIKit

class ChattingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var chattImage: UIImageView!
    @IBOutlet weak var chattName: UILabel!
    @IBOutlet weak var chattContent: UILabel!
    @IBOutlet weak var chattNumber: UILabel!
    
    func configure(_ model: ChatList) {
        chattImage.image = UIImage(named: model.imageName)
        chattName.text = model.name
        chattContent.text = model.chat
        chattNumber.text = model.date
    }
    
}
