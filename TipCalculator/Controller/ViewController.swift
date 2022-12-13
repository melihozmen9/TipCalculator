//
//  ViewController.swift
//  TipCalculator
//
//  Created by Kullanici on 13.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    var selected = ""
    var fSelected : Float = 0.0
    var split : Int = 1
    var typed = ""
    var splitted : Float = 0.0
    @IBAction func tipChanged(_ sender: UIButton) {
      //  sender.backgroundColor = UIColor.green
        typed = self.billTextField.text!
        
        
        billTextField.endEditing(true)
        selected = sender.currentTitle!
        let numbers = String(selected.dropLast())
        fSelected = Float(numbers)!
        if sender.currentTitle == "0%"{
            zeroPctButton.backgroundColor = UIColor.green
            tenPctButton.backgroundColor = UIColor.clear
            twentyPctButton.backgroundColor = UIColor.clear
        }
        if sender.currentTitle == "10%"{
            tenPctButton.backgroundColor = UIColor.green
            zeroPctButton.backgroundColor = UIColor.clear
            twentyPctButton.backgroundColor = UIColor.clear
        }
        if sender.currentTitle == "20%"{
            twentyPctButton.backgroundColor = UIColor.green
            tenPctButton.backgroundColor = UIColor.clear
            zeroPctButton.backgroundColor = UIColor.clear
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        split = Int(sender.value)
        splitLabel.text = String(Int(sender.value))
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let amount = (typed as! NSString).floatValue
        
        //fSelected = (((selected as NSString).floatValue))/100
        let yuzdelik = fSelected/100
   print("\(yuzdelik)yuzdelik")
        let withPct : Float = Float(amount) + (Float(amount) * fSelected)
        splitted = withPct / Float(split)
        print(splitted)
        print(typed)
        self.performSegue(withIdentifier: "toSecondVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.total = String(format: "%.2f", splitted as! CVarArg)
            destinationVC.result = String("Split between \(split) people with \(fSelected) tip.")
        }
    }
    
    

}

