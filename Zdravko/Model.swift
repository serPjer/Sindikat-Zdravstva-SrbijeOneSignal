//
//  Model.swift
//  Sindikat Zdravstva
//
//  Created by Petar Stijepcic on 2/19/20.
//  Copyright © 2020 2ADesign. All rights reserved.
//

import UIKit

struct Title: Decodable {
    var rendered: String
}

struct Content: Decodable {
    var rendered: String
}

struct SinglePost: Decodable {
    var id: Int
    var title: Title
    var featured_image_src: String
    var content: Content

}

struct Posts {
    static func getPosts() {
        let urlString = "http://zdravko.org.rs/wp-json/wp/v2/posts/?per_page=50"
        let url = URL(string: urlString)!
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
                if let data = data, let string = String(data: data, encoding: .utf8) {
                    
                    let jStr0 = string.replacingOccurrences(of: "&#8211;", with: "-")
//                        let jStr0 = string.replacingOccurrences(of: "&#8211;", with: "-")

                   let jStr = jStr0


                    let jData = jStr.data(using: .unicode)!
                    if let p = try? JSONDecoder().decode([SinglePost].self, from: jData) {
                        allPosts = p

                        getImages()

                }
            }
        }
        
        task.resume()
    }
    

}


func getImages() {
    let cnt = allPosts == nil ? 0 : allPosts!.count
    allImages = [UIImage?].init(repeating: nil, count: cnt)
    if let posts = allPosts {
        for i in 0..<posts.count {
            let post = posts[i]
            let str = yuUrl(string: post.featured_image_src)
            
            if let url = URL(string: str) {
                let task = URLSession.shared.dataTask(with: url) {
                    (data, response, error) in
                    if let data = data {
                        allImages?[i] = UIImage(data: data)
                        
                        DispatchQueue.main.async {
                            mainTable.reloadData()
                        }
                    }
                }
                task.resume()
            }
        }
    }
}

var allPosts : [SinglePost]?
var allImages: [UIImage?]?

func yuUrl(string: String) -> String {
    var result = string
    result = result.replacingOccurrences(of: "š", with: "%C5%A1")
    result = result.replacingOccurrences(of: "ć", with: "%C4%87")
    result = result.replacingOccurrences(of: "č", with: "%C4%8D")
    result = result.replacingOccurrences(of: "ž", with: "%C5%BE")
    result = result.replacingOccurrences(of: "đ", with: "%C4%91")

    result = result.replacingOccurrences(of: "Š", with: "%C5%A0")
    result = result.replacingOccurrences(of: "Ć", with: "%C4%86")
    result = result.replacingOccurrences(of: "Č", with: "%C4%8C")
    result = result.replacingOccurrences(of: "Ž", with: "%C5%BD")
    result = result.replacingOccurrences(of: "Đ", with: "%C4%90")
    

    return result
    
    
}


extension String {
  func stringByAddingPercentEncodingForRFC3986() -> String? {
    let allowed = NSMutableCharacterSet.alphanumeric()
    allowed.addCharacters(in: "-._~/?:")
    return addingPercentEncoding(withAllowedCharacters: allowed as CharacterSet)
  }
}

func setImages() {
    if let posts = allPosts {
           
           for i in posts {
            
            o = i.title.rendered
            p = i.content.rendered
            z = i.featured_image_src
            id = i.id
        
            let str = yuUrl(string: z)

            if let url = URL(string: str){
                    do {

                    let data = try Data(contentsOf: url)
                    imageArray = UIImage(data: data)!
                        
                        searchArraytest.append((titleName: o, content: p, image: imageArray, id: id))
                       } catch let err {
                           print("error : \(err.localizedDescription)")
                       }
                   }
            
                }

            currentSearchArray = searchArraytest
        }
}

