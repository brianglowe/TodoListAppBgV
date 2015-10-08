//
//  ViewController.swift
//  TodoListAppBg
//
//  Created by Brian J Glowe on 10/7/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

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

    func clearFields() {
        textView.text = " "
    }
    
    
    func addNewTodo() {
        let newTodo = Todo(newName: textField.text!.lowercaseString)
        textView.text = myListofTodos.addTodo(newTodo)
        clearFields()
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        addNewTodo()
        
    }
    
    
    @IBAction func deleteTodo(sender: UIButton) {
        
        
    }
    

    
      let songs = [
          "Space Intro", "Fly Like an Eagle", "Wild Mountain", "Serenade", "Dance, Dance, Dance", "Mercury Blues", "Take the Money and Run", "Rock'n Me", "You Send Me", "Blue Odyssey"]
    
    let todoListTableIdentifier = "TodoListTableIdentifier"
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(todoListTableIdentifier) as UITableViewCell!
        
        if(cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: todoListTableIdentifier)
        }
        
        cell.textLabel?.text = songs[indexPath.row]
        return cell
    }
    

    
    
}
















