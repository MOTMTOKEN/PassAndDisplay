//
//  ViewController.swift
//  PassAndDisplay
//
//  Created by Amir Nilsson on 2021-11-21.
//

import UIKit

class ViewController: UIViewController {

    let segueTofirstViewId = "Correct"
    let segueToSecondViewId = "Wrong"
    
    let number1 = Int.random(in: 0..<100)
    let number2 = Int.random(in: 0..<100)
    
    @IBOutlet weak var displayQuestion: UILabel!
    @IBOutlet weak var userAnswer: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getQuestion()
        
        
    }
    
    func getQuestion(){
        
        let number1String = String(number1)
        let number2String = String(number2)
        
        displayQuestion.text = "\(number1String) + \(number2String)"
        
    }

    @IBAction func submitButton(_ sender: Any) {
        
        let finalAnswer = number1 + number2
        if (String(finalAnswer) == userAnswer.text) {
            performSegue(withIdentifier: segueTofirstViewId, sender: self)
        } else {
            performSegue(withIdentifier: segueToSecondViewId, sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueToSecondViewId {
            let finalAnswer = number1 + number2
            let destinationVc = segue.destination as! WrongViewController
            destinationVc.recivingMessage = String(finalAnswer)
        }
    }
    
    
}

