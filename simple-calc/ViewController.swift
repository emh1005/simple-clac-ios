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
    private var avgTotal: Double = 0
    private var avg: Double = 0
    private var fact: Int = 1
    private var num1: Double = 0
    private var num2: Double = 0
    private var numMod: Double = 0
    private var numMod2: Double = 0
    private var result: Double = 0
    private var num: String = ""
    private var temp: String = ""
    private var test: Bool = true
    private var history: String = ""
    
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
        self.history += "1"
        self.label.text = "\(num)"
    }

    @IBAction func two(_ sender: AnyObject) {
        self.num += "2"
        self.history += "2"
        self.label.text = "\(num)"
    }
    
    @IBAction func three(_ sender: AnyObject) {
        self.num += "3"
        self.history += "3"
        self.label.text = "\(num)"
    }
    
    @IBAction func four(_ sender: AnyObject) {
        self.num += "4"
        self.history += "4"
        self.label.text = "\(num)"
    }
    
    @IBAction func five(_ sender: AnyObject) {
        self.num += "5"
        self.history += "5"
        self.label.text = "\(num)"
    }
    
    @IBAction func six(_ sender: AnyObject) {
        self.num += "6"
        self.history += "6"
        self.label.text = "\(num)"
    }
    
    @IBAction func seven(_ sender: AnyObject) {
        self.num += "7"
        self.history += "7"
        self.label.text = "\(num)"
    }
    
    @IBAction func eight(_ sender: AnyObject) {
        self.num += "8"
        self.history += "8"
        self.label.text = "\(num)"
    }
    
    @IBAction func nine(_ sender: AnyObject) {
        self.num += "9"
        self.history += "9"
        self.label.text = "\(num)"
    }
    
    @IBAction func zero(_ sender: AnyObject) {
        self.num += "0"
        self.history += "0"
        self.label.text = "\(num)"
    }
    
    @IBAction func point(_ sender: AnyObject) {
        self.num += "."
        self.history += "."
        self.label.text = "\(num)"
    }
    
    @IBAction func add(_ sender: AnyObject) {
        self.temp = "add"
        if num != "" {
            self.num1 = Double(num)!
            self.num = ""
            self.result += num1
            self.history += " + "
            self.label.text = "\(result)"
        } else {
            self.label.text = "\(result)"
        }
    }
    
    @IBAction func sub(_ sender: AnyObject) {
        self.temp = "sub"
        if num != "" {
            self.num1 = Double(num)!
            self.num = ""
            self.result = num1 - result
            self.history += " - "
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
            self.num1 = Double(num)!
            self.num = ""
            self.result *= num1
            self.history += " * "
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
            self.num1 = Double(num)!
            self.num = ""
            if result == 0 {
                self.label.text = "error"
            } else {
                self.result = num1 / result
                self.history += " / "
                self.label.text = "\(result)"
            }
        } else {
            self.label.text = "\(result)"
        }
    }
    
    @IBAction func mod(_ sender: AnyObject) {
        self.temp = "mod"
        if num != "" {
            self.numMod = Double(num)!
            self.num = ""
            self.history += " % "
        } else {
            self.label.text = "\(result)"
        }
    }
    
    @IBAction func count(_ sender: AnyObject) {
        self.temp = "count"
        self.count += 1
        self.num = ""
        self.history += " count "
    }
    
    @IBAction func avg(_ sender: AnyObject) {
        self.temp = "avg"
        if num != "" {
            self.num1 = Double(num)!
            self.avgTotal += num1
            self.count += 1
            self.num = ""
            self.history += " avg "
        } else {
            self.label.text = ""
        }
    }

    @IBAction func fact(_ sender: AnyObject) {
        self.temp = "fact"
        self.history += "fact"
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
        self.history = ""
    }
    
    @IBAction func equal(_ sender: AnyObject) {
        test = false
        if temp == "add" {
            if num != "" {
                self.result += Double(num)!
                self.num = ""
                self.label.text = "\(result)"
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "sub" {
            if num != "" {
                self.result -= Double(num)!
                self.num = ""
                self.label.text = "\(result)"
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "mul" {
            if num != "" {
                self.result *= Double(num)!
                self.num = ""
                self.label.text = "\(result)"
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "div" {
            if num != "" {
                self.result /= Double(num)!
                self.num = ""
                self.label.text = "\(result)"
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "mod" {
            if num != "" {
                    self.numMod2 = Double(num)!
                    self.num = ""
                if numMod2 == 0 {
                    self.label.text = "error"
                } else {
                    let tempResult = Int(numMod) % Int(numMod2)
                    self.result = Double(tempResult)
                    self.label.text = "\(result)"
                }
            } else {
                self.label.text = "\(result)"
            }
        } else if temp == "count" {
            self.count += 1
            self.result = Double(self.count)
            self.label.text = "\(self.count)"
        } else if temp == "avg" {
            if num != "" {
                self.num1 = Double(num)!
                self.avgTotal += num1
                self.count += 1
                self.avg = avgTotal / Double(count)
                self.result = self.avg
                self.label.text = "\(self.avg)"
            } else {
                self.label.text = ""
            }
        } else if temp == "fact" {
            if num != "" {
                for i in 1...Int(num)! {
                    fact *= i
                }
                self.result = Double(self.fact)
                self.label.text = "\(self.fact)"
                num = ""
            } else {
                self.label.text = ""
            }
        }
        
        self.history += " = \(result)"
        let defaults = UserDefaults.standard
        var histories = defaults.array(forKey: "history")
        if histories == nil {
            histories = Array()
        }
        histories!.append(history)
        defaults.set(histories, forKey: "history")
        self.history = ""
    }

}

