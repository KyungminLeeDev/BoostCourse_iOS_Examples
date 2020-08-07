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
        formatter.dateStyle = .medium
        return formatter
    }()
    
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        print("value change")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 코드로 타겟과 액션 메소드 연결 구현
        self.datePicker.addTarget(self, action: #selector(self.didDatePickerValueChanged(_:)), for: UIControl.Event.valueChanged)
        
    }


}

