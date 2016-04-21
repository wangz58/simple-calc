//
//  ViewController.swift
//  simple-calc
//
//  Created by apple on 4/20/16.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var input = "";
    var displayedResult = "";

    @IBOutlet weak var present: UITextField!
    
    @IBAction func onePressed(sender: AnyObject) {
        input += " 1";
        present.text = input;
    }
    @IBAction func twoPressed(sender: AnyObject) {
        input += " 2";
        present.text = input;
    }
    @IBAction func threePressed(sender: AnyObject) {
        input += " 3";
        present.text = input;
    }
    @IBAction func fourPressed(sender: AnyObject) {
        input += " 4";
        present.text = input;
    }
    @IBAction func fivePressed(sender: AnyObject) {
        input += " 5";
                present.text = input;
    }
    @IBAction func sixPressed(sender: AnyObject) {
        input += " 6";
                present.text = input;
    }
    @IBAction func sevenPressed(sender: AnyObject) {
        input += " 7";
                present.text = input;
    }
    @IBAction func eightPressed(sender: AnyObject) {
        input += " 8";
                present.text = input;
    }
    @IBAction func ninePressed(sender: AnyObject) {
        input += " 9";
                present.text = input;
    }
    @IBAction func zeroPressed(sender: AnyObject) {
        input += " 0";
                present.text = input;
    }
    @IBAction func plusPressed(sender: AnyObject) {
        input += " +";
                present.text = input;
    }
    @IBAction func minusPressed(sender: AnyObject) {
        input += " -";
        present.text = input;
    }
    @IBAction func multiplyPressed(sender: AnyObject) {
        input += " *";
                present.text = input;
    }
    @IBAction func dividePressed(sender: AnyObject) {
        input += " /";
    }
    @IBAction func modPressed(sender: AnyObject) {
        input += " %"
                present.text = input;
    }
    @IBAction func countPressed(sender: AnyObject) {
        input += " count";
                present.text = input;
    }
    @IBAction func avgPressed(sender: AnyObject) {
        input += " avg";
                present.text = input;
    }
    @IBAction func factorialPressed(sender: AnyObject) {
        input += " fact";
                present.text = input;
    }
    
    
    
    @IBAction func equals(sender: AnyObject) {
        if input != "" {
            let inputArr = input.characters.split {$0 == " "}.map { String($0) };
            let count = inputArr.count;
            var result: Int?;
            let multiOp : Set<String> = ["count", "avg", "fact"];
            
            if multiOp.contains(inputArr[count - 1]) {
                if inputArr[count - 1] == "count" {
                    result = count - 1;
                } else if inputArr[count - 1] == "avg" {
                    var element:Int?;
                    result = 0;
                    var i = 0;
                    while i < count - 1 {
                        element = Int(inputArr[i]);
                        result = result! + element!;
                        i = i + 1;
                    }
                    result = result! / (count - 1);
                } else if inputArr[count - 1] == "fact" && count == 2 {
                    let base: Int? = Int(inputArr[0]);
                    result = 1;
                    var j = base!;
                    while j >= 1 {
                        result = result! * j;
                        j = j - 1;
                    }
                } else {
                    print("Invalid input!");
                }
            } else if count == 3 {
                
                let firstNum:Int? = Int(inputArr[0]);
                
                let oper = inputArr[1];
                
                let secondNum: Int? = Int(inputArr[2]);
                
                if oper == "+" {
                    result = firstNum! + secondNum!;
                } else if oper == "-" {
                    result = firstNum! - secondNum!;
                } else if oper == "*" {
                    result = firstNum! * secondNum!;
                } else if oper == "/" {
                    result = firstNum! / secondNum!;
                } else if oper == "%" {
                    result = firstNum! % secondNum!;
                }else {
                    print("Invalid input!");
                }
            }
            if result != nil {
                displayedResult = String(result!);
            } else {
                displayedResult = "your input is invalid. Please try again";
            }
            present.text = displayedResult;
            input = "";
        }
    }
}

