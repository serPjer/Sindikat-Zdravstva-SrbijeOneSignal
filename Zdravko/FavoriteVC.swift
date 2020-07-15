//
//  FavoriteVC.swift
//  Sindikat Zdravstva Srbije
//
//  Created by Petar Stijepcic on 4/12/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//

import UIKit

var favTitle = String()
var favImg = UIImage()
var favContent = String()
var favId = Int()

var favArray = [(name: String, image:UIImage, id: Int, content: String)]()

class FavoriteVC: UIViewController {
    
     override func viewWillAppear(_ animated: Bool) {

                 let image: UIImage = UIImage(named: "sindikat")!
                 let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                 imageView.contentMode = .scaleAspectFit
                 imageView.image = image
                 self.navigationItem.titleView = imageView
                 favTableView.reloadData()
     }

    override func viewDidLoad() {
        super.viewDidLoad()

        mainTable.reloadData()
        
        mainTable = favTableView
        favTableView.delegate = self
        favTableView.dataSource = self
    
    }
    
    @IBOutlet weak var favTableView: UITableView!
    
}
extension FavoriteVC: UITableViewDataSource, UITableViewDelegate {

   
   
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
         
        return favArray.count
      
        }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteCell", for: indexPath) as? FavoriteCell
      
        
        
            cell?.favoriteTextField.text = favArray[indexPath.row].name
            cell?.favoriteImage.image = favArray[indexPath.row].image
                

        
       
         return cell!
         
       
}

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        newsIndex = indexPath.row
        tableView.reloadData()
        searchIndex = indexPath.row
    }
    
    @available(iOS 11.0, *)
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        tableView.deselectRow(at: indexPath, animated: true)
        if !favArray.isEmpty {
            let deleteAction = UIContextualAction(style: .normal, title: "Обриши") { (action, view, (Bool) -> Void) in
                favArray.remove(at: indexPath.row)
                tableView.reloadData()
            }
            let swipeActionConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
            return swipeActionConfiguration
        } else {
            return nil
        }
        
    }
    
}
