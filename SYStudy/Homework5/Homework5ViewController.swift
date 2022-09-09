//
//  Homework5ViewController.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/09.
//

import UIKit

class Homework5ViewController: UIViewController {
    
    @IBOutlet weak var collectionVeiw: UICollectionView!
    
    let companyList: [Company] = Company.list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionVeiw.delegate = self
        collectionVeiw.dataSource = self
        
        self.updateCollectionViewBasic()
    }
    
    private func updateCollectionViewBasic() {
        collectionVeiw.contentInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
    }
    
//    private func updateCollectionViewBasic() {
//        // 다른 사람의 확인을 위해서 코드로 적어주는 것도 좋은 방법이다.
//        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//            flowLayout.estimatedItemSize = .zero // none으로 결정
//        }
//
//        collectionView.contentInset = UIEdgeInsets(top: 20, left: 16, bottom: 0, right: 16)
//    }
}

extension Homework5ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemSpacing: CGFloat = 15
        let inset: CGFloat = 12

        let width = (collectionView.bounds.width - 3 * inset - 3 * itemSpacing) / 4

        debugPrint("Width Collection View: \(collectionView.bounds.width)")
        debugPrint("width: \(width.rounded(.down))")
        
        let height = width * 1.8

        return CGSize(width: width, height: height)
    }
    
    
}

extension Homework5ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return companyList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CompanyCell", for: indexPath)
         as! CompanyCell
        
        cell.configure(companyList[indexPath.item])
        
        return cell
    }
}

