//
//  SecondViewController.swift
//  todoApp
//
//  Created by Tianyi Zhang on 2017-11-30.
//  Copyright © 2017 Tianyi Zhang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var items : NSMutableArray = []
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items : NSMutableArray
        
        if  let tempItems = itemsObject as? NSMutableArray {
            items = tempItems
            items.addingObjects(from: [itemTextField.text!])
        } else {
            items = [itemTextField.text]
        }
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

