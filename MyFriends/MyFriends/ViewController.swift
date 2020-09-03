//
//  ViewController.swift
//  MyFriends
//
//  Created by Kyungmin Lee on 2020/09/03.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier: String = "cell"
    var friends: [Friend] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let jsonDecoder: JSONDecoder = JSONDecoder()
        guard let dataAsset: NSDataAsset = NSDataAsset(name: "friends") else {
            return
        }
        
        do {
            friends = try jsonDecoder.decode([Friend].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
        
        tableView.reloadData()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let friend: Friend = friends[indexPath.row]
        
        cell.textLabel?.text = friend.nameAndAge
        cell.detailTextLabel?.text = friend.fullAdress
        
        
        return cell
    }

}

