//
//  ViewController.swift
//  0618Calculator
//
//  Created by 高田早記 on 2015/06/16.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel!
    
    var number:Double = 0
    var number2:Double = 0
    var operation:Double = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func select0() {
        number = number*10 + 0
            label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select1() {
        number = number*10 + 1
            label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select2() {
        number = number*10 + 2
            label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select3() {
        number = number*10 + 3
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select4() {
        number  = number*10 + 4
        label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select5() {
        number = number*10 + 5
            label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select6() {
        number = number*10 + 6
            label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select7() {
        number = number*10 + 7
            label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select8() {
        number = number*10 + 8
            label.text = String(stringInterpolationSegment: number)
    }
    
    @IBAction func select9() {
        number = number*10 + 9
            label.text = String(stringInterpolationSegment: number)
    }
    
    
    
    @IBAction func plus() {
        //plusボタンを押した時、labelには0が表示される
        label.text = String(0)
        
        operation = 1
        number2 = number
        number = 0
    }
    
    @IBAction func equal() {
        if operation == 1{
            label.text = String(stringInterpolationSegment: number + number2)
        }else if operation == 2 {
            label.text = String(stringInterpolationSegment:number2 - number)
        }else if operation == 3 {
            label.text = String(stringInterpolationSegment: number * number2)
        }else{
            label.text = String(stringInterpolationSegment: number2 / number)
        }
    }
    
    @IBAction func minus() {
        label.text = String(0)
        operation = 2
        number2 = number
        number = 0
    }
    
    @IBAction func times() {
    label.text = String(0)
    operation = 3
    number2 = number
    number = 0
    }
    
    @IBAction func divide() {
    label.text = String(0)
    operation = 4
    number2 = number
    number = 0
    }
    
    @IBAction func clear(){
        number = number - number
        label.text = String(stringInterpolationSegment: number)
    }
}
