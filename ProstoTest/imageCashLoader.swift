//
//  imageCashLoader.swift
//  ProstoTest
//
//  Created by Vladimir on 24.11.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import Foundation
import UIKit

///картинки загружаются каждый раз как ячейка переиспользуется. исправляется добавлением NSCache 

class ImageLoader {
    var task = URLSessionDownloadTask()
    var session = URLSession.shared
    
    func downloadImage(withURL url: URL, forCell cell: UITableViewCell){
        task = session.downloadTask(with: url, completionHandler: { (location, response, error) in
            if let data = try? Data(contentsOf: url) {
                let img: UIImage! = UIImage(data: data)
                DispatchQueue.main.async {
                    cell.imageView?.image = img
                }
            }
        })
        task.resume()
    }
    
}
