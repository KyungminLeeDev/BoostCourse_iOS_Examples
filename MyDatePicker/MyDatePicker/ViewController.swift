//
//  ViewController.swift
//  MyDatePicker
//
//  Created by Kyungmin Lee on 2020/08/07.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        
        // 미리 지정된 스타일 사용
//        formatter.dateStyle = .medium
//        formatter.timeStyle = .medium
        
        // 커스텀 스타일 사용
        formatter.dateFormat = "yyyy/MM/dd hh:mm:ss"
        
        return formatter
    }()
    
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        print("value change")
        
        // 데이트피커에서 날짜 가져와서 데이트포맷터로 문자열 양식으로 변환하기
        // sender로도 가져올 수 있다. (datePicker 아웃렛을 사용안한다면 sender로 가져와야함)
        let date: Date = self.datePicker.date
        let dateString: String = self.dateFormatter.string(from: date)
        
        // 레이블에 띄우기
        self.dateLabel.text = dateString
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 코드로 타겟과 액션 메소드 연결 구현
        self.datePicker.addTarget(self, action: #selector(self.didDatePickerValueChanged(_:)), for: UIControl.Event.valueChanged)
        
    }


}

