//
//  ViewController.swift
//  Homework2
//
//  Created by Consultant on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

let JapanButtonTapped = "Japan"

extension ViewController: SideSelectionDelegate{
    
    
    func didTapChoice(image: UIImage, name: String) {
        
    MainLogo.image = image
    MainLabel.text = name
        
       
    }
}

class ViewController: UIViewController {

    let Japan = Notification.Name(rawValue: JapanButtonTapped)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
     @IBOutlet weak var MainLabel: UILabel!
    
    @IBOutlet weak var MainLogo: UIImageView!
    
    @IBOutlet weak var MainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObservers()
      
    }
    
    func createObservers(){
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateFlagImage(notification:)), name: Japan, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateNameLabel(notification:)), name: Japan, object: nil)
        
    }
    
    @objc func updateFlagImage(notification: NSNotification){
        
        let isJapan = notification.name == Japan
        let image = isJapan ? UIImage (named: "Japan")!:nil
        MainLogo.image = image
        
    }
    @objc func updateNameLabel(notification: NSNotification){
        let isJapan = notification.name == Japan
        let name = isJapan ? "Japan":nil
        MainLabel.text = name
        
        
    }
    
    

    
    @IBAction func ButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        
        selectionVC.selectionDelegate = self
        
        present(selectionVC, animated: true, completion: nil)
        
    }
    

    
}

