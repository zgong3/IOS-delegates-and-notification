//
//  SelectionScreen2.swift
//  Homework2
//
//  Created by Consultant on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class SelectionScreen2: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func JapanTapped(_ sender: UIButton) {
        let name = Notification.Name(rawValue: JapanButtonTapped)
        NotificationCenter.default.post(name: name, object: nil)
        
        dismiss(animated: true, completion: nil)
    }
    

}
