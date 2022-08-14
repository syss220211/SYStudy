//
//  Homework2ViewController.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/08/13.
//

import UIKit

class Homework2ViewController: UIViewController {

    @IBOutlet weak var onOffSwitch: UISwitch!
    
    @IBOutlet weak var onOffButton: UIButton!
    private var state: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private enum Texts{
        static var card: String = "설치된 SIM 카드 없음"
        static var check: String = "확인"
        static var cancel: String = "취소"
        static var number: String = "숫자 선택"
        static var choice: String = "숫자를 선택해주세요
    }
    
    @IBAction func showAlert(_ sender: Any) {
        
        guard !state else { return }
        
        let alert = UIAlertController(title: Texts.card, message: "", preferredStyle: .alert)
        
        let confirm = UIAlertAction(title: Texts.check, style: .default) { _ in
            self.view.backgroundColor = .yellow
        }
        let cancel = UIAlertAction(title: Texts.cancel, style: .cancel) { _ in
            self.view.backgroundColor = .red
        }
        alert.addAction(confirm)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func showActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: Texts.number, message: Texts.choice, preferredStyle: .actionSheet)
        
        let array = ["1", "2", "3", "4"]
        var action = UIAlertAction()
        
        for idx in 0..<array.count {
            action = UIAlertAction(title: array[idx], style: .default)
            alert.addAction(action)
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        alert.addAction(cancel)
        
        present(alert, animated: true)
    }
    
    @IBAction func stateChange(_ sender: Any) {
        state.toggle()
    }
}
