//
//  TodoListTableViewController.swift
//  TodoListAppBg
//
//  Created by Brian J Glowe on 10/7/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.
//

import UIKit

class TodoListTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}