//
//  AlarmViewController.swift
//  Cowalker
//
//  Created by 조예원 on 2018. 7. 1..
//  Copyright © 2018년 조예원. All rights reserved.
//

import UIKit

class AlarmViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var alarmTableView: UITableView!
    var num = 0
    @IBOutlet weak var img1: UIView!
    @IBOutlet weak var img2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img2.isHidden = true
    }
    
    @IBAction func button1(_ sender: UIButton) {
        num = 0
        
        img1.isHidden = false
        img2.isHidden = true
        alarmTableView.reloadData()
    }
    @IBAction func button2(_ sender: UIButton) {
        num = 1
        img1.isHidden = true
        img2.isHidden = false
        alarmTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if num == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier:"alarmTableViewCell") as! alarmTableViewCell
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier:"chattingTableViewCell") as! chattingTableViewCell
            return cell
        }
    }
    
}
