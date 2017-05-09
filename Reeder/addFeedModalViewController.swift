//
//  addFeedModalViewController.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/07.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class addFeedModalViewController: NSViewController {
    
    @IBOutlet var addFeedButton: NSButton!
    @IBOutlet var urlTextField: NSTextField!
    @IBOutlet var addModal: NSBox!
    
    @IBOutlet var categorySelectButton: NSPopUpButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.addFeedButton.wantsLayer = true
        self.addFeedButton.layer?.borderColor = NSColor.blue.cgColor
        self.populateCategorySelect()
    }
    
    func populateCategorySelect() {
        
        if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            let fetchCategories = Categories.fetchRequest() as NSFetchRequest<Categories>
            
            do {
                let categories = try context.fetch(fetchCategories)
                
                for category in categories {
                    self.categorySelectButton.addItem(withTitle: category.name!)
                }
            } catch {
                print(error)
            }
        
        }
    
    }
    
    func fetchWebstites(){
    
         if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext{
         
            let fetchWebsites = Website.fetchRequest() as NSFetchRequest<Website>
            fetchWebsites.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
            
            do {
                let websites = try context.fetch(fetchWebsites)

            } catch {
                print(error)
            }
        }
    
    }
    
    func checkRSSExists(rssURL: String) -> Bool {
    
        if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            let fetchWebsites = Website.fetchRequest() as NSFetchRequest<Website>
            fetchWebsites.predicate = NSPredicate(format: "url == %@", rssURL)
            
            do {
                let matchingWebsites = try context.fetch(fetchWebsites)
                
                if matchingWebsites.count >= 1 {
                
                    return true
                } else {
                
                    return false
                }
                
            } catch {
                print(error)
            }
        }
        
        return false
    }
    
    @IBAction func addFeed(_ sender: Any) {

        
        if let url = URL(string: urlTextField.stringValue) {
            
            URLSession.shared.dataTask(with: url) { (data:Data?, response:URLResponse?, error:Error?) in
                if error != nil {
                    print(error as Any)
                } else {
                    if data != nil {
                        let parser = XmlParser()
                        let info = parser.getRssFeedMetaData(data: data!)
                        
                        if !self.checkRSSExists(rssURL: self.urlTextField.stringValue){
                        
                            if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext{
                            
                                let website = Website(context: context)

                                website.url = self.urlTextField.stringValue
                                website.name = info.title
                                website.favicon = info.faviconUrl
                                website.category = self.categorySelectButton.titleOfSelectedItem

                                (NSApplication.shared().delegate as? AppDelegate)?.saveAction(nil)
                            }
                        }
                        
                    }
                }
            }.resume()
            self.fetchWebstites()
            urlTextField.stringValue = ""
            
        }
    }
    
}
