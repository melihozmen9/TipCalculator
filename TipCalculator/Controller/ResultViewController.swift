//
//  ResultViewController.swift
//  TipCalculator
//
//  Created by Kullanici on 13.12.2022.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    var total = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = total
        settingsLabel.text = result
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
