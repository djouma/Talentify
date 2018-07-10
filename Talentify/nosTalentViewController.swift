//
//  nosTalentViewController.swift
//  Talentify
//
//  Created by Developer on 19/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class nosTalentViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var imageArroy = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6")]
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArroy.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCollectionViewCell", for: indexPath) as! imageCollectionViewCell
        
        cell.imgImage.image = imageArroy[indexPath.row]
        
        return cell
    }

}
