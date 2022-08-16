//
//  StudyViewController.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/08/16.
//

import UIKit

class StudyViewController: UIViewController {

    
    @IBOutlet weak var alertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    @IBAction func onButton(_ sender: Any) {
        
        alertFunc(title: nil, message : nil, okAction: "성공", cancelAction: "실패")
    }
    
    func alertFunc(title: String?, message: String?, okAction: String, cancelAction: String){
        let alertAction = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: okAction, style: .default)
        let cancelAction = UIAlertAction(title: cancelAction, style: .cancel)
        
        alertAction.addAction(okAction)
        alertAction.addAction(cancelAction)
        
        present(alertAction, animated: true, completion: nil)
    }
    
    
}
