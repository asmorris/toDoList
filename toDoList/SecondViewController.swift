//
//  SecondViewController.swift
//  toDoList
//
//  Created by Andrew Morrison on 2016-03-01.
//  Copyright © 2016 Andrew Morrison. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var item: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItem(sender: AnyObject) {
        
        toDoList.append(item.text!)
        item.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        item.resignFirstResponder()
        return true
        
    }
    
}

