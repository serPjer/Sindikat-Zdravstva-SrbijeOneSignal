//
//  ViewController.swift
//  Sindikat Zdravstva
//
//  Created by Petar Stijepcic on 2/19/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//



import UIKit

var mainTable: UITableView = UITableView()

var searchIndex = -1

var o = String()
var p = String()
var z = String()
var id = Int()
var imageArray = UIImage()


var searchArraytest = [(titleName: String, content: String, image: UIImage, id: Int)]()
var currentSearchArray = [(titleName: String, content: String, image: UIImage, id: Int)]()


class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainTable = myTableView
        myTableView.dataSource = self
        myTableView.delegate = self
        
        Posts.getPosts()
        setImages()
        
        
            createAlert(title: "Подаци се учитавају", message: "Mолим вас сачекајте")
            
            
        }
    
    override func viewWillAppear(_ animated: Bool) {

                let image: UIImage = UIImage(named: "sindikat")!
                let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                imageView.contentMode = .scaleAspectFit
                imageView.image = image
                self.navigationItem.titleView = imageView
                myTableView.reloadData()
    }

    @IBAction func refresh(_ sender: Any) {
        Posts.getPosts()
        myTableView.reloadData()
        
    }
    
    func createAlert (title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Уреду", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }

    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let posts = allPosts {
            return posts.index(after: 20)
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? MyCell
        if let posts = allPosts, let images = allImages {
            cell?.cellTextMain.text = posts[indexPath.row].title.rendered
            cell?.cellImage.image = images[indexPath.row]
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        newsIndex = indexPath.row
        
    }
}
