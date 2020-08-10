//
//  ViewController.swift
//  TabGesture
//
//  Created by Kyungmin Lee on 2020/08/10.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    /* 델리게이트로 구현하기 위해 주석처리
    // Tap Gesture Reconizer과 연결할 액션 메서드
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /* 델리게이트로 구현하기 위해 주석처리
        // 코드로 구현
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tapView(_:)))
        self.view.addGestureRecognizer(tapGesture)
        */
        
        // 델리게이트로 구현
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer()
        tapGesture.delegate = self
        self.view.addGestureRecognizer(tapGesture)
    }

    // 델리게이트로 구현
    // 델리게이트 사용하면 더 다양한 상황에 다양한 동작을 제어할 수 있다.
    // 단순한 처리만 필요하다면 Target-Action 패턴 사용 (상황에 맞게 사용하자)
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        self.view.endEditing(true)
        
        // 물어보는 순간에 사용자가 이미 탭을 했다는 것 이므로 지금은 반환값이 상관업다.
        return true
    }
    
    
}

