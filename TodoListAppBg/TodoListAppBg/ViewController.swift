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

//    
//    func editStudent() {
//        let editStudent = Student(name: nameField.text!.lowercaseString, spiritAnimal: animalField.text!.lowercaseString, currentAction: actionField.text!.lowercaseString)
//        roomInfo.text = newRoom.updateStudent(editStudent)
//        roomInfo.backgroundColor = UIColor.grayColor()
//        clearInfo()
//        listStudents()
//    }
//    
//    func listStudents() {
//        roomInfo.text = "\(newRoom.roomName) Classroom: Student List \n"
//        
//        for (_, student) in newRoom.students {
//            roomInfo.text = "\n\(roomInfo.text) \n Name:\(student.name)\n Spirit-Animal: \(student.spiritAnimal)\n Action: \(student.currentAction)\n Karma: \(student.karmaPoints)\n"
//            
//        }
//        roomInfo.backgroundColor = UIColor.yellowColor()
//    }
//    
//    func clearInfo() {
//        nameField.text = " "
//        animalField.text = " "
//        actionField.text = " "
//        searchField.text = " "
//        roomInfo.backgroundColor = UIColor.whiteColor()
//        
//    }
    
    
}

