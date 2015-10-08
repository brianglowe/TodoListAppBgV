//
//  ViewController.swift
//  TodoListAppBg
//
//  Created by Brian J Glowe on 10/7/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    
    
    
    var myListofTodos = ListOfTodos(newListofTodos: "Brian's")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addNewTodo
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        
    }

}

