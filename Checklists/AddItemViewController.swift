//
//  AddItemViewController.swift
//  Checklists
//
//  Created by JIAN WANG on 3/16/15.
//  Copyright (c) 2015 JACY WANG. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
