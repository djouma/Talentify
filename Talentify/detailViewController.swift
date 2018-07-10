//
//  detailViewController.swift
//  Talentify
//
//  Created by Developer on 25/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    var getName = ""
    var getImage = UIImage()
    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgImage.image = getImage
            lblName.text = ""

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
