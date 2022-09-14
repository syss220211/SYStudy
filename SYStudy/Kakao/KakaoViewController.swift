//
//  KakaoViewController.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/12.
//

import UIKit
import Alamofire

class KakaoViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    let kakaoList: [ChatList] = ChatList.list
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
}

extension KakaoViewController: UICollectionViewDelegateFlowLayout {
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
    
    
}

extension KakaoViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kakaoList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let chatcell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChattingCollectionViewCell", for: indexPath) as! ChattingCollectionViewCell
        
        chatcell.configure(kakaoList[indexPath.item])
        return chatcell
    }
    
}
