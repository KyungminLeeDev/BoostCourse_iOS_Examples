//
//  ViewController.swift
//  Networking
//
//  Created by Kyungmin Lee on 2021/01/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier: String = "friendCell"
    var friends: [Friend] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        let friend: Friend = self.friends[indexPath.row]
        
        cell.textLabel?.text = friend.name.full
        cell.detailTextLabel?.text = friend.email
        
        guard let imageURL: URL = URL(string: friend.picture.thumbnail) else {
            return cell
        }
        guard let imageData: Data = try? Data(contentsOf: imageURL) else {
            return cell
        }
        cell.imageView?.image = UIImage(data: imageData)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    
}

