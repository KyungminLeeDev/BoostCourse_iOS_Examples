//
//  ViewController.swift
//  AsyncExample
//
//  Created by Kyungmin Lee on 2020/09/18.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func touchUpDownloadButton(_ sender: UIButton) {
        // 이미지 다운로드 -> 이미지 뷰에 셋팅
    
        // Data.init이 동기메서드이므로 작업이 끝나기까지 다음으로 넘어가지 않는다
        let imageURL: URL = URL(string: "https://wallpapercave.com/wp/wp4469532.jpg")!
//        let imageData: Data = try! Data.init(contentsOf: imageURL)
//        let image: UIImage = UIImage(data: imageData)!
//        self.imageView.image = image
        
        // 백스레드에서 이미지가 다운로드 되는동안 메인스레드 영향 받지 않음
        OperationQueue().addOperation {
            // 백스레드에서 코드 실행
            let imageData: Data = try! Data.init(contentsOf: imageURL)
            let image: UIImage = UIImage(data: imageData)!
            
            // 위 코드 실행이 끝나면
            // 메인 스레드에서 코드 실행
            OperationQueue.main.addOperation {
                // UI와 관련된 코드는 메인스레드에서 동작해야함
                self.imageView.image = image
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

