//
//  Checklist.swift
//  Checklists
//
//  Created by JIAN WANG on 3/20/15.
//  Copyright (c) 2015 JACY WANG. All rights reserved.
//

import UIKit

class Checklist: NSObject, NSCoding {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey("Name") as String
        items = aDecoder.decodeObjectForKey("Items") as [ChecklistItem]
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: "Name")
        aCoder.encodeObject(items, forKey: "Items")
    }
    
    func countUncheckedItems() -> Int {
        /*
        var count = 0
        for item in items {
            if !item.checked {
                count += 1
            }
        }
        
        return count
       */
        
        return reduce(items, 0) {cnt, item in cnt + (item.checked ? 0 : 1)}
    }
}
