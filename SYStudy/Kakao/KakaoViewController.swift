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

extension KakaoViewController: UICollectionViewDelegate {
    
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
