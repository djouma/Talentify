//
//  loginEntrepriseViewController.swift
//  Talentify
//
//  Created by Developer on 20/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class loginEntrepriseViewController: UIViewController {
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var loginTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "connexion"
        {
            print("wwawawa")
            if(loginTxt.text == "admin" || passwordTxt.text == "123456789")
            {
                segue.destination as! ViewController
            }
        }
    }

}
