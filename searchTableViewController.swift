//
//  searchTableViewController.swift
//  Talentify
//
//  Created by Developer on 24/04/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

enum selectedScope:Int{
    case Nom = 0
    case Prix = 1
    case Nombre = 2
    case Jour = 3
}
class searchTableViewController: UITableViewController,UISearchBarDelegate{
    
    var dataAry:[Model] = Model.generateModelArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchBarSetup()
    }
    func searchBarSetup(){
    let searchBar = UISearchBar(frame: CGRect(x:0,y:0,width:(UIScreen.main.bounds.width),height:70))
        searchBar.showsScopeBar = true
        searchBar.scopeButtonTitles = ["Nom","Prix","Nombre","Jour"]
        searchBar.selectedScopeButtonIndex = 0
        searchBar.delegate = self
        
        self.tableView.tableHeaderView = searchBar
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        if searchText.isEmpty {
            dataAry = Model.generateModelArray()
            self.tableView.reloadData()
        }else{
        filterTableView(ind: searchBar.selectedScopeButtonIndex, text: searchText)
        }
    }
    
    func filterTableView(ind:Int,text:String){
        switch ind {
        case selectedScope.Nom.rawValue:
            dataAry = dataAry.filter({ (mod) -> Bool in
                return mod.imageName.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
        case selectedScope.Prix.rawValue:
            dataAry = dataAry.filter({ (mod) -> Bool in
                return mod.imageYear.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
        case selectedScope.Nombre.rawValue:
            dataAry = dataAry.filter({ (mod) -> Bool in
                return mod.imageBy.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
        case selectedScope.Jour.rawValue:
            dataAry = dataAry.filter({ (mod) -> Bool in
                return mod.imageJour.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
        default:
            print("no type")
        }
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataAry.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! tableCell
        let model = dataAry[indexPath.row]
        cell.NomLb1.text = model.imageName
        cell.imgView.image = UIImage(named: model.imageName)
        cell.prixLb1.text = model.imageYear
        cell.nombreLb1.text = model.imageBy
        cell.jourLb1.text = model.imageJour
        return cell
    }

}
