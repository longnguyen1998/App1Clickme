//
//  ViewController.swift
//  Book_iOS_Demo1
//
//  Created by Nguyen Dinh Thanh Long on 10/23/19.
//  Copyright © 2019 Nguyen Dinh Thanh Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var targetValue = 0
    var currentValue : Int = 50

    @IBOutlet weak var VImgBackground: UIImageView!
    @IBOutlet weak var lblChange: UILabel!
    @IBOutlet weak var btnClick: UIButton!
    @IBOutlet weak var sldMove: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnClick.layer.borderColor = UIColor.purple.cgColor
        btnClick.layer.cornerRadius = 2
        btnClick.layer.borderWidth = 2
        btnClick.clipsToBounds = true
        VImgBackground.image = UIImage.init(named: "orange")
        
//        targetValue = Int.random(in: 1...100)
        
        startNewRound()
        
        
        sldMove.setThumbImage(UIImage(named: "kute"), for: UIControl.State.normal)
//        sldMove.setThumbImage( UIImage(named: "kute") , for: .highlighted)
        
    }

    @IBAction func sld_move(_ sender: UISlider) {
        currentValue = lroundf(sender.value)
        
        lblChange.text = "\(currentValue)"


        //print("The value of the slider is now: \(sender.value)")
    }
    
    func updateLabels() {
    lblChange.text = String(targetValue) }
    
    func startNewRound() {
    targetValue = Int.random(in: 1...100)
    currentValue = 50
//    sender.value = Float(currentValue)
    updateLabels() // Add this line
    }

    
    @IBAction func btn_click(_ sender: Any) {
        
        let mess = "The value of the slider is: \(currentValue)" +
                    "\nThe target value is: \(targetValue)"
        let alert = UIAlertController(title: "Hello !!!", message: mess, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

