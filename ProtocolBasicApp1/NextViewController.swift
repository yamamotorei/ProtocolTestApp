//
//  NextViewController.swift
//  ProtocolBasicApp1
//
//  Created by 山本怜 on 2020/11/09.
//

import UIKit

protocol CatchProtocol {
    //規則を決める
    func catchData(count:Int)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var count:Int = 0
    
    var delegate:CatchProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func plusAction(_ sender: Any) {
        
        count += 1
        label.text = String(count)
    }
    
    @IBAction func back(_ sender: Any) {
        //デリゲートメソッドを任せたクラスで発動させる
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
        
    }
    
    


}
