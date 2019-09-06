//
//  SelectionScreen.swift
//  Homework2
//
//  Created by Consultant on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String)
}

class SelectionScreen: UIViewController {
    
    
    var selectionDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func CanadaTapped(_ sender: UIButton) {
        
        selectionDelegate.didTapChoice(image: UIImage(named: "Canada")!, name: "Canada")
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func GermanyTapped(_ sender: UIButton) {
         selectionDelegate.didTapChoice(image: UIImage(named: "Germany")!, name: "Germany")
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func USATapped(_ sender: UIButton) {
        
         selectionDelegate.didTapChoice(image: UIImage(named: "USA")!, name: "United States")
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func UKTapped(_ sender: UIButton) {
        
         selectionDelegate.didTapChoice(image: UIImage(named: "UK")!, name: "United Kingdom")
        
        dismiss(animated: true, completion: nil)
    }
    
}
