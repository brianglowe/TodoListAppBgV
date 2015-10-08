//: Playground - noun: a place where people can play

import UIKit

class Todo {
    var name: String
    
    init (newTodo: String){
        self.name = newTodo
    }
}

class ListOfTodos {
    var nameOfList: String
    var list = [Todo]()

    init (newListOfTodos: String){
        self.nameOfList = newListOfTodos
    }
    
    func replaceObjectAtIndex(index: Int, withObject anObject: Todo) {
        
    }
    
//    func addTodo() {
//        
//    }
    
}

var firstTodo = Todo(newTodo: "make app")
var secondTodo = Todo(newTodo: "eat food")
var thirdTodo = Todo(newTodo: "drink beer")

firstTodo.name

var firstListOfTodos = ListOfTodos(newListOfTodos: "Due Tonight")

firstListOfTodos.list.count
firstListOfTodos.list.append(firstTodo)
firstListOfTodos.list.append(secondTodo)
firstListOfTodos.list.append(thirdTodo)
firstListOfTodos.list.count






//func replaceObjectAtIndex(_ index: Int, withObject anObject: AnyObject)