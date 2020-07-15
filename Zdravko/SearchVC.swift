//
//  SearchVC.swift
//  Sindikat Zdravstva Srbije
//
//  Created by Petar Stijepcic on 4/16/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//

import UIKit


class SearchVC: UIViewController {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainTable = searchTableView
        
        searchTableView.dataSource = self
        searchTableView.delegate = self
        searchBar.delegate = self
        setImages()
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
    
                    let image: UIImage = UIImage(named: "sindikat")!
                    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                    imageView.contentMode = .scaleAspectFit
                    imageView.image = image
                    self.navigationItem.titleView = imageView
        }
    
  
    
}


extension SearchVC: UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return currentSearchArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath) as? SearchCell else { return UITableViewCell()}
        
        
        
        cell.titleTextSearch.text = currentSearchArray[indexPath.row].titleName
        cell.searchImage.image = currentSearchArray[indexPath.row].image
        
        return cell
}
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        searchIndex = indexPath.row
        
        
      
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            currentSearchArray = searchArraytest
            searchTableView.reloadData()
            return
        }
        currentSearchArray = searchArraytest.filter({ searchArraytest -> Bool in
            searchArraytest.titleName.lowercased().contains(searchText.lowercased())

        })
        searchTableView.reloadData()
        
    }
}
