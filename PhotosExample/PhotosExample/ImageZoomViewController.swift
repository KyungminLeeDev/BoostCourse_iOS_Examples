//
//  ImageZoomViewController.swift
//  PhotosExample
//
//  Created by Kyungmin Lee on 2020/09/18.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit
import Photos

class ImageZoomViewController: UIViewController, UIScrollViewDelegate {

    var asset: PHAsset!
    let imageManager: PHCachingImageManager = PHCachingImageManager()
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageManager.requestImage(for: asset,
                                  targetSize: CGSize(width: asset.pixelWidth, height: asset.pixelHeight),
                                  contentMode: .aspectFill,
                                  options: nil,
                                  resultHandler: { image, _ in
                                    self.imageView.image = image
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}
