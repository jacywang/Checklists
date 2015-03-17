//
//  ChecklistItem.swift
//  Checklists
//
//  Created by JIAN WANG on 3/15/15.
//  Copyright (c) 2015 JACY WANG. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}