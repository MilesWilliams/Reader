//
//  AddCategoryViewController.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/07.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class AddCategoryViewController: NSViewController {

    @IBOutlet var categoryDescriptionTextField: NSTextField!
    @IBOutlet var CategoryNameTextField: NSTextField!
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do view setup here.
        
    }
    
    func fetchCategories(){
        
        if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            let fetchCategories = Categories.fetchRequest() as NSFetchRequest<Categories>
//            fetchWebsites.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
            
            do {
                let categories = try context.fetch(fetchCategories)
                //                print(websites)
                
                for category in categories {
                    print(category)
                    
                    if let name = category.name {
                        print(name)
                    }
                    if let web = category.website {
                        print(web)
                    }
                }
            } catch {
                print(error)
            }
        }
        
    }
    
    @IBAction func categorySaveClicked(_ sender: NSButton) {
        if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            let categories = Categories(context: context)
            
            categories.name = self.CategoryNameTextField.stringValue
            categories.categoryDescription = self.categoryDescriptionTextField.stringValue
            
            (NSApplication.shared().delegate as? AppDelegate)?.saveAction(nil)
            
            
        }
        
        self.fetchCategories()

    }
}
