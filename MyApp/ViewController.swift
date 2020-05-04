//
//  ViewController.swift
//  MyApp
//
//  Created by Bogdan Donea on 18/04/2020.
//  Copyright © 2020 Bogdan Donea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var item: Item?
    
    @IBOutlet weak var itemTextField: UITextField!
    
   
    
    @IBOutlet weak var saveButton: UIButton!
    
   
    
    @IBAction func cancel(_ sender: UIButton) {
        let isInAddMode = presentingViewController is UINavigationController
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            _ = navigationController?.popViewController(animated: true)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if sender as AnyObject? === saveButton {
        let name = itemTextField.text ?? ""
        item = Item(name: name)
      }
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let item = item {
           itemTextField.text = item.name
        }
    }
    
    

}

