//
//  loginViewController.swift
//  Talentify
//
//  Created by Developer on 25/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var mdpTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var btLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
        if self.emailTxt.text == "akki" || self.mdpTxt.text == "123"{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "akiki")
            self.present(vc!, animated: true, completion: nil)
            
        } else  if self.emailTxt.text == "laura" || self.mdpTxt.text == "123"{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "laura")
            self.present(vc!, animated: true, completion: nil)
            
        }
        else {
                let alertController = UIAlertController(title: "Error", message: "Please enter", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil )
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
        }
    }
    

}
