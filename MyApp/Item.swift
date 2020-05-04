//
//  Item.swift
//  MyApp
//
//  Created by Bogdan Donea on 19/04/2020.
//  Copyright © 2020 Bogdan Donea. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding {
    var name: String
    
    func encode(with aCoder: NSCoder) {
      aCoder.encode(name, forKey: "name")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
      let name = aDecoder.decodeObject(forKey: "name") as! String
      self.init(name: name)
    }
    
    
    init(name: String) {
        self.name = name
        super.init()
    }
    
    
}

class StorageManagerService {

    static let itemKey = "items"

    static func saveItems(items: [Item]?) {

        let defaults = UserDefaults.standard

        var list = [String]()
        for item in items! {
            list.append(item.name)
        }

        defaults.set(list, forKey: itemKey)

    }


    static func loadItems() -> [Item]? {

        var list = [Item]()

        let defaults = UserDefaults.standard

        let listStrings = defaults.value(forKey: itemKey) as? [String]

        guard listStrings != nil else {

            return nil
        }

        for string in listStrings! {

            let item = Item(name: string)
            list.append(item)
        }

        return list
    }
}
