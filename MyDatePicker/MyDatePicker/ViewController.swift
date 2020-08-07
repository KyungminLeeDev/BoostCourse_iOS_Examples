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
    
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        print("value change")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

