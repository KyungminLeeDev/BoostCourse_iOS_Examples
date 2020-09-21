//
//  ViewController.swift
//  FriendsCollection
//
//  Created by Kyungmin Lee on 2020/09/21.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
//    var numberOfCell: Int = 10
    let cellIdentifier: String = "cell"
    var friends: [Friend] = []
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return numberOfCell
        return friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: FriendCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! FriendCollectionViewCell
        
        let friend: Friend = friends[indexPath.item]
        
        cell.nameAgeLabel.text = friend.nameAndAge
        cell.adressLabel.text = friend.fullAdress
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        numberOfCell += 1
//        collectionView.reloadData()
//    }
    

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
        
        collectionView.reloadData()
    }


}

