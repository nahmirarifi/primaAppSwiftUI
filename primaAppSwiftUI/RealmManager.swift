//
//  RealmManager.swift
//  primaAppSwiftUI
//
//  Created by nahmir on 04/05/23.
//

import Foundation
import RealmSwift


class RealmManager: ObservableObject{
    private(set) var localRealm: Realm?
    @Published private(set) var tasks: [Task] = []
    
    
    init(){
        openRealm()
        getTask()
    }
    
    func openRealm() {
        do {
            let config = Realm.Configuration(schemaVersion: 1)
            Realm.Configuration.defaultConfiguration = config
            localRealm = try Realm()
            
            
        } catch {
            print("error opening realm: \(error)")
        }
    }
    
    
    
    func addTask(taskTitle: String) {
        if let localRealm = localRealm {
            do {
                try localRealm.write {
                    let newTask = Task(value: ["title": taskTitle, "completed": false])
                    localRealm.add(newTask)
                    getTask()
                    print("Added new task to Realm: \(newTask)")
                }
            } catch {
                print("error creating tak \(error)")
            }
        }
    }
    
    func getTask(){
        if let localRealm = localRealm{
           let allTasks = localRealm.objects(Task.self).sorted(byKeyPath: "completed")
            tasks = []
            allTasks.forEach {
                task in tasks.append(task)
            }
        }
    }
}
