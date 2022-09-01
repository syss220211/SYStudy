//
//  RankCollectionViewCell.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/01.
//

import UIKit

class RankCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var rankLabel: UILabel!
    
    @IBOutlet weak var companyNameLabel: UILabel!
    
    @IBOutlet weak var companyPriceLabel: UILabel!
    
    @IBOutlet weak var companyImageView: UIImageView!
    
    @IBOutlet weak var diffLabel: UILabel!
    
    @IBOutlet weak var heartImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        debugPrint("1231231")
    }
    
    func configure(_ rankModel: RankModel) {
        
        rankLabel.text = "\(rankModel.rank)"
        companyNameLabel.text = rankModel.name
        companyPriceLabel.text = "\(rankModel.price)원"
        companyImageView.image = UIImage(named: rankModel.imageName)
        diffLabel.text = "\(rankModel.diff)"
        
//        if rankModel.diff < 0 {
//            diffLabel.textColor = .blue
//        } else {
//            diffLabel.textColor = .red
//        }
//
//        rankModel.diff < 0 ? (diffLabel.textColor = .blue) : (diffLabel.textColor = .red)
        diffLabel.textColor = rankModel.diff < 0 ? .blue : .red
    }
}
