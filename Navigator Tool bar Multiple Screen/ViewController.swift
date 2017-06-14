//
//  ViewController.swift
//  Navigator Tool bar Multiple Screen
//
//  Created by Student14 on 6/14/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBAction func increaseNumber(_ sender: Any) {
        showMsg(strMsg: "Clicked increseNumber")
        increaseNumberControl()
    }
    
    
    @IBAction func decreaseNumber(_ sender: Any) {
        showMsg(strMsg: "Clicked decreaseNumber")
        decreaseNumberControl()
    }
    
    
    @IBAction func homeNumber(_ sender: Any) {
        showMsg(strMsg: "Clicked resetNumber")
        resetNumberControl()
    }
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var intNumberControl = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } // main function
    
    func showMsg(strMsg: String) -> Void {
        print("Message==>\(strMsg)")
    }
    
    
    func increaseNumberControl() -> Void {
        intNumberControl += 1
        intNumberControl = checkNumber(intNumber: intNumberControl)
        numberLabel.text = String(intNumberControl)
    }
    
    func decreaseNumberControl() -> Void {
        intNumberControl -= 1
        intNumberControl = checkNumber(intNumber: intNumberControl)
        numberLabel.text = String(intNumberControl)
    }
    
    func resetNumberControl() -> Void {
        intNumberControl = 1
        numberLabel.text = String(intNumberControl)
    }
    
    func checkNumber(intNumber: Int) -> Int {
        var intResult = intNumber
        // At 11
        if intNumber == 11{
            intResult = -10
        }
        // At -11
        if intNumber == -11{
            intResult = 10
        }
        return intResult
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

