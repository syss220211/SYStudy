//
//  CollectionViewCell.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/02.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var animalPhoto: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var animalAge: UILabel!
    @IBOutlet weak var moveImage: UIImageView!
    
    func configure(_ animal: Animal) {
        animalPhoto.image = UIImage(named : animal.photo)
        animalName.text = "\(animal.petName)"
        animalAge.text = "\(animal.petDesc)"
        
    }
}
