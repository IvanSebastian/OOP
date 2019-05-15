//
//  ViewController.swift
//  OOP
//
//  Created by Ivan Sebastian on 15/05/19.
//  Copyright © 2019 Vanski Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notebookImageView: UIImageView!
    @IBOutlet weak var notebookNameLabel: UILabel!
    @IBOutlet weak var notebookPriceLabel: UILabel!
    @IBOutlet weak var notebookColorLabel: UILabel!
    
    var notebookInstance:NotebookModel?
    
    func updateUI(){
        if let notebookInstance = notebookInstance {
            notebookNameLabel.text = notebookInstance.name
            notebookPriceLabel.text = "\(notebookInstance.price)"
            notebookColorLabel.text = notebookInstance.color
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notebookInstance = NotebookModel(name: "Macbook", price: 15432900, color: "Space Gray")
        
        updateUI()
        
        
    }

    
}

