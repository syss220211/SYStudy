//
//  CompanyCell.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/09.
//

import UIKit

class CompanyCell: UICollectionViewCell {
    
    @IBOutlet weak var mark: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
//        name.adjustsFontSizeToFitWidth = true
//        name.numberOfLines = 0
    }
    
    func configure(_ model: Company) {
        mark.image = UIImage(named: model.img)
        name.text = model.name
    }
}
