//
//  ViewController.swift
//  simple-calc
//
//  Created by studentuser on 10/24/16.
//  Copyright © 2016 emh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    private var count: Int = 0
    private var avgTotal: Int = 0
    private var avg: Int = 0
    private var fact: Int = 1
    private var num1: Int = 0
    private var num2: Int = 0
    private var numMod: Int = 0
    private var numMod2: Int = 0
    private var result: Int = 0
    private var num: String = ""
    private var temp: String = ""
    private var test: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func one(_ sender: AnyObject) {
        self.num += "1"
        self.label.text = "\(num)"
    }

    @IBAction func two(_ sender: AnyObject) {
        self.num += "2"
        self.label.text = "\(num)"
    }
    
    @IBAction func three(_ sender: AnyObject) {
        self.num += "3"
        self.label.text = "\(num)"
    }
    
    @IBAction func four(_ sender: AnyObject) {
        self.num += "4"
        self.label.text = "\(num)"
    }
    
    @IBAction func five(_ sender: AnyObject) {
        self.num += "5"
        self.label.text = "\(num)"
    }
    
    @IBAction func six(_ sender: AnyObject) {
        self.num += "6"
        self.label.text = "\(num)"
    }
    
    @IBAction func seven(_ sender: AnyObject) {        self.num += "7"
        self.label.text = "\(num)"
    }
    
    @IBAction func eight(_ sender: AnyObject) {
        self.num += "8"
        self.label.text = "\(num)"
    }
    
    @IBAction func nine(_ sender: AnyObject) {
        self.num += "9"
        self.label.text = "\(num)"
    }
    
    @IBAction func zero(_ sender: AnyObject) {
        self.num += "0"
        self.label.text = "\(num)"
    }
    
    @IBAction func add(_ sender: AnyObject) {
        self.temp = "add"
        if num != "" && result == 0 {
            self.num1 = Int(num)!
            self.num = ""
            self.result += num1
            self.label.text = "\(result)"
        } else if num == "" && result != 0 {
            
        } else {
            self.label.text = "\(result)"
        }
    }
    
    @IBAction func sub(_ sender: AnyObject) {
        self.temp = "sub"
        if num != "" {
            self.num1 = Int(num)!
            self.num = ""
            self.result = num1 - result
            self.label.text = "\(result)"
        } else {
            self.label.text = "\(result)"
        }
    }
    
    @IBAction func mul(_ sender: AnyObject) {
        self.temp = "mul"
        if test {
            result = 1
            test = false
        }
        if num != "" {
            self.num1 = Int(num)!
            self.num = ""
            self.result *= num1
            self.label.text = "\(result)"
        } else {
            self.label.text = "\(result)"
        }
    }
    
    @IBAction func div(_ sender: AnyObject) {
        self.temp = "div"
        if test {
            result = 1
            test = false
        }
        if num != "" {
            self.num1 = Int(num)!
            self.num = ""
            if result == 0 {
                self.label.text = "error"
            } else {
                self.result = num1 / result
                self.label.text = "\(result)"
            }
        } else {
            self.label.text = "\(result)"
        }
    }
    
    @IBAction func mod(_ sender: AnyObject) {
        self.temp = "mod"
        if num != "" {
            self.numMod = Int(num)!
            self.num = ""
        } else {
            self.label.text = "\(result)"
        }
    }
    
    @IBAction func count(_ sender: AnyObject) {
        self.temp = "count"
        self.count += 1
        self.num = ""
    }
    
    @IBAction func avg(_ sender: AnyObject) {
        self.temp = "avg"
        if num != "" {
            self.num1 = Int(num)!
            self.avgTotal += num1
            self.count += 1
            self.num = ""
        } else {
            self.label.text = ""
        }
    }

    @IBAction func fact(_ sender: AnyObject) {
        self.temp = "fact"
    }
    
    @IBAction func clear(_ sender: AnyObject) {
        self.count = 0
        self.avgTotal = 0
        self.avg = 0
        self.fact = 1
        self.num1 = 0
        self.num2 = 0
        self.numMod = 0
        self.numMod2 = 0
        self.result = 0
        self.num = ""
        self.temp = ""
        self.test = true
        self.label.text = ""
    }
    
    @IBAction func equal(_ sender: AnyObject) {
        test = false
        if temp == "add" {
            if num != "" {
                self.result += Int(num)!
                self.num = ""
                self.label.text = "\(result)"
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "sub" {
            if num != "" {
                self.result -= Int(num)!
                self.num = ""
                self.label.text = "\(result)"
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "mul" {
            if num != "" {
                self.result *= Int(num)!
                self.num = ""
                self.label.text = "\(result)"
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "div" {
            if num != "" {
                self.result /= Int(num)!
                self.num = ""
                self.label.text = "\(result)"
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "mod" {
            if num != "" {
                    self.numMod2 = Int(num)!
                    self.num = ""
                if numMod2 == 0 {
                    self.label.text = "error"
                } else {
                    self.result = numMod % numMod2
                    self.label.text = "\(result)"
                }
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "count" {
            self.count += 1
            self.label.text = "\(self.count)"
        } else if temp == "avg" {
            if num != "" {
                self.num1 = Int(num)!
                self.avgTotal += num1
                self.count += 1
                self.avg = avgTotal / count
                self.label.text = "\(self.avg)"
            } else {
                self.label.text = ""
            }
        } else if temp == "fact" {
            if num != "" {
                for i in 1...Int(num)! {
                    fact *= i
                }
                self.label.text = "\(self.fact)"
                num = ""
            } else {
                self.label.text = ""
            }
        }

    }

}

