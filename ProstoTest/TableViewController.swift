//
//  TableViewController.swift
//  ProstoTest
//
//  Created by Vladimir on 24.11.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var imageLoader = ImageLoader()
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        imageLoader.downloadImage(withURL: URL(string: "https://picsum.photos/seed/\(Int.random(in: 0...50))/300/300")!, forCell: cell)
        return cell
    }

}
