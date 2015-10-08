//
//  ListOfTodosClass.swift
//  TodoListAppBg
//
//  Created by Brian J Glowe on 10/7/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.
//

import Foundation
import UIKit


class ListOfTodos {
    var nameOfList: String
    var list = [String: Todo]()
    
    init(newListofTodos: String) {
        self.nameOfList = newListofTodos
    }
    
    func addTodo(newTodo: Todo) -> String {
        list[newTodo.name] = newTodo
        print("Name of new todo: \(newTodo.name) & number of Todos in list: \(list.count)")
        return "You created a new Todo"
    }
    
    func completedTodo(todo: String) -> String {
        list.removeValueForKey(todo)
        return "Well done... Mission Accomplished"
    }
    
    func editTodo(todoToEdit: Todo) -> String {
        self.list.updateValue(todoToEdit, forKey: todoToEdit.name)
//        self.list.updateValue(<#T##value: Value##Value#>, forKey: <#T##Key#>) ~for reference~
        return "The \(todoToEdit.name) was updated"
    }
    
}















