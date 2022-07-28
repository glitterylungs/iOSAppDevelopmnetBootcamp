//
//  Category.swift
//  Todoey
//
//  Created by Alicja Gruca on 27/07/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var color: String = "FFFFFF"
    let items = List<Item>()
}
