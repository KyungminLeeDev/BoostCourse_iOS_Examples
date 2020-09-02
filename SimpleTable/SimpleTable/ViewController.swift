//
//  ViewController.swift
//  SimpleTable
//
//  Created by Kyungmin Lee on 2020/09/02.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableview: UITableView!
    
    let cellIdentifier: String = "cell"
    
    let korean: [String] = ["가", "나", "다", "라", "마", "바", "사", "아", "자", "차", "카", "타", "파", "하"]
    let english: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var dates: [Date] = []
    
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 뷰 컨트롤러의 인스턴스가 테이블뷰의 델리게이트와 데이터소스 역할을 해줄 것이다
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    @IBAction func touchUpAddButton(_ sender: UIButton) {
        dates.append(Date())
        
        //tableview.reloadData()
        tableview.reloadSections(IndexSet(2...2), with: .automatic)
    }
    
  
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    // 섹션에 해당하는 row의 갯수가 몇개인지 알려달라
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
            case 0:
                return korean.count
            case 1:
                return english.count
            case 2:
                return dates.count
            default:
                return 0
        }

    }
    
    // row에 해당하는 cell을 달라
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        if indexPath.section < 2 {
            let text: String = indexPath.section == 0 ? korean[indexPath.row] : english[indexPath.row]
            cell.textLabel?.text = text
        } else {
            cell.textLabel?.text = dateFormatter.string(from: dates[indexPath.row])
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < 2 {
            return section == 0 ? "한글" : "영어"
        }
        
        return nil
    }
}

