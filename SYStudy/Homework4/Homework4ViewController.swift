//
//  Homework4ViewController.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/01.
//

import UIKit

class Homework4ViewController: UIViewController {
    
    let rankModelList: [RankModel] = RankModel.list
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension Homework4ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        debugPrint("size: \(collectionView.bounds)")
        
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}

extension Homework4ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rankModelList.count
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RankCollectionViewCell", for: indexPath) as! RankCollectionViewCell
        
//        let rank = rankModelList[indexPath.item]
//        cell.configure(rank)
        cell.configure(rankModelList[indexPath.item])
        
        return cell
    }
}
