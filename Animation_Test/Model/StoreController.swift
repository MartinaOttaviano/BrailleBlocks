//
//  StoreController.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 13/04/22.
//

import Foundation
import CoreData
import Combine

struct StoreController{
    
    static let shared = StoreController()
    static var preview: StoreController = {
        let result = StoreController(inMemory: true)
        let viewContext = result.dataContainer.viewContext
        return result
    }()
    
    let dataContainer: NSPersistentContainer
    
    init(inMemory: Bool = false){
        dataContainer = NSPersistentContainer(name: "LettersStore")
        if inMemory{
            dataContainer.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        dataContainer.viewContext.automaticallyMergesChangesFromParent = true
        
        dataContainer.loadPersistentStores{(description, error) in
            if let error = error {
                fatalError("CORE DATA ERROR: \(error)")
            }
        }
    }
    
    func SaveContext(completionHandler: @escaping (Error?) -> Void){
        if StoreController.shared.dataContainer.viewContext.hasChanges{
            do{
                try StoreController.shared.dataContainer.viewContext.save()
                completionHandler(nil)
            }catch{
                completionHandler(error)
            }
        }
    }
}
