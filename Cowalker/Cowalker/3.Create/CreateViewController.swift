//
//  CreateViewController.swift
//  Cowalker
//
//  Created by 정보영 on 2018. 7. 2..
//  Copyright © 2018년 조예원. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.tintColor = UIColor (red: 100.0/255.0, green: 223.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        self.tabBarController?.tabBar.items![2].image = #imageLiteral(resourceName: "iconsTabbar3Create")
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CreateNaviViewController")
        self.present(vc!, animated: true, completion: nil)
    
    }

    

}
