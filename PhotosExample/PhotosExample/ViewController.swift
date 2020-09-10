//
//  ViewController.swift
//  PhotosExample
//
//  Created by Kyungmin Lee on 2020/09/10.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var fetchResut: PHFetchResult<PHAsset>!
    var imageMaager: PHCachingImageManager = PHCachingImageManager()
    let cellIdentifier: String = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let photoAuthorizationStatus = PHPhotoLibrary.authorizationStatus()
        
        switch photoAuthorizationStatus {
        case .authorized:
            print("접근 허가됨")
            requestCollection()
            tableView.reloadData()
        case .denied:
            print("접근 불허")
        case .notDetermined:
            print("아직 응답하지 않음")
            PHPhotoLibrary.requestAuthorization({ (status) in
                switch status {
                case .authorized:
                    print("사용자가 허용함")
                    self.requestCollection()
                    OperationQueue.main.addOperation {
                        self.tableView.reloadData()
                    }
                    
                case .denied:
                    print("사용자가 불허함")
                    default: break
                }
            })
        case .restricted:
            print("접근 제한")
        }
        
        
    }
    
    func requestCollection() {
        
        // 카메라롤 콜렉션 가져오기
        let cameraRoll: PHFetchResult<PHAssetCollection> = PHAssetCollection.fetchAssetCollections(with: .smartAlbum, subtype: .smartAlbumUserLibrary, options: nil)
        
        guard let cameraRollCollection = cameraRoll.firstObject else {
            return
        }
        
        // 가져온 사진을 최신순으로 정렬
        let fetchOptions = PHFetchOptions()
        fetchOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
        // 가져온 결과를 fetchResult 프로퍼티로 가져오기
        fetchResut = PHAsset.fetchAssets(in: cameraRollCollection, options: fetchOptions)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchResut?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let asset: PHAsset = fetchResut.object(at: indexPath.row)
        
        // 이미지 요청
        let options: PHImageRequestOptions = PHImageRequestOptions()
        options.resizeMode = PHImageRequestOptionsResizeMode.exact
        imageMaager.requestImage(for: asset,
                                 targetSize: CGSize(width: 30, height: 30),
                                 contentMode: .aspectFill,
                                 options: options,
                                 resultHandler: { image, _ in
                                    cell.imageView?.image = image
        })
        
        return cell
    }
}

