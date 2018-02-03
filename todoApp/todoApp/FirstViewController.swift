//
//  FirstViewController.swift
//  todoApp
//
//  Created by Tianyi Zhang on 2017-11-30.
//  Copyright © 2017 Tianyi Zhang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var items : NSMutableArray = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        var cellLabel = ""
        if let tempLabel = items[indexPath.row] as? String {
            cellLabel = tempLabel
        }
        cell?.textLabel?.text = cellLabel
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemsObject as? NSMutableArray {
            items = tempItems
            print(items)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

