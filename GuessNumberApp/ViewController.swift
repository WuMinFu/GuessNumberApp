//
//  ViewController.swift
//  GuessNumberApp
//
//  Created by mac on 2018/7/24.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
/*研究UITextField
https://medium.com/彼得潘的-swift-ios-app-開發教室/study-uitextfield-3f8f0cc3749d
*/
    
    var randomNumber = Int.random(in: 0...20)
    
    @IBOutlet weak var wordCountLabel: UILabel!
    @IBOutlet weak var promptLabel: UILabel!
    @IBAction func answerTextField(_ sender: UITextField) {
        if let number = Int(sender.text!) {
            if number > randomNumber {
                promptLabel.text = "過大"
            } else if number < randomNumber{
                promptLabel.text = "過小"
            } else{
                promptLabel.text = "正確" 
            }
        }else {
            promptLabel.text = "請猜數字"
        }
        wordCountLabel.text =  "\(sender.text!.count)"
    }
    @IBAction func endKey(_ sender: Any) {
        view.endEditing(true)
    }
    @IBOutlet weak var answerLabel: UILabel!

    @IBAction func answerSlider(_ sender: UISlider) {
        let font = answerLabel.font!
        answerLabel.font = font.withSize(CGFloat(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = "\(randomNumber)"
        let font = answerLabel.font!
        answerLabel.font = font.withSize(1)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

