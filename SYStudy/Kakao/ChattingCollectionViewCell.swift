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
        
        let dateStr = model.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let convertDate = dateFormatter.date(from: dateStr) // Date 타입으로 변환
        let myDateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "M/d"
        
        let convertStr = myDateFormatter.string(from: convertDate!)
        
        chattNumber.text = convertStr
        
    }
}
