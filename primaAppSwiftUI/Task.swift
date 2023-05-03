//
//  Task.swift
//  primaAppSwiftUI
//
//  Created by nahmir on 04/05/23.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable{
    
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
