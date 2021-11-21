//
//  WrongViewController.swift
//  PassAndDisplay
//
//  Created by Amir Nilsson on 2021-11-21.
//

import UIKit

class WrongViewController: UIViewController {
    
    var recivingMessage : String?

    @IBOutlet weak var answerIs: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerIs.text = "The answer was \(recivingMessage ?? "")"

        
        // Do any additional setup after loading the view.
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
