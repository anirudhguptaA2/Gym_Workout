//
//  MenuViewController.swift
//  BBF
//
//  Created by ankit on 09/03/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

import UIKit

@objc
protocol MenuViewControllerDelegate {
    // func animalSelected(animal: Animal)
}

class MenuViewController: UIViewController {
    @IBOutlet weak var SlideTableView: UITableView!

    var animals: Array<MenuArray>!
    struct TableView {
        struct CellIdentifiers {
            static let AnimalCell = "AnimalCell"
        }
    }
       override func viewDidLoad() {
        super.viewDidLoad()
        self.SlideTableView.registerNib(UINib(nibName: "menuViewTableViewCell", bundle: nil), forCellReuseIdentifier: "AnimalCell")
        SlideTableView.reloadData()
       

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
extension MenuViewController: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableView.CellIdentifiers.AnimalCell, forIndexPath: indexPath) as!menuViewTableViewCell
        cell.configureForAnimal(animals[indexPath.row])
        return cell
    }
    func animalSelected(animal: MenuArray){
        
    }
}
extension MenuViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    }
    
}
//class AnimalCell: UITableViewCell {
//    
//    
//  
//
//    func configureForAnimal(animal: MenuArray) {
////        animalImageView.image = animal.image
//    cellLabel.text = animal.title
////        imageCreatorLabel.text = animal.creator
//    }
//    
//    
//    
//}





