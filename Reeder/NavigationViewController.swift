//
//  Navigation.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/06.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class NavigationViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {

    @IBOutlet var addButton: NSButton!
    @IBOutlet var categoriesButton: NSButton!
    @IBOutlet var starredButton: NSButton!
    @IBOutlet var notesButton: NSButton!
    @IBOutlet var tagsButton: NSButton!
    @IBOutlet var booksButton: NSButton!
    @IBOutlet var pdfButton: NSButton!
    @IBOutlet var settingsButton: NSButton!
   
    @IBOutlet var addMenu: NSBox!
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do view setup here.
        let pinkrose = NSColor(red: 24/255.0, green: 25/255.0, blue: 29/255.0, alpha: 1.0)
        view.wantsLayer = true
        view.layer?.backgroundColor = pinkrose.cgColor
        self.addButton.image = NSImage(named: "add")
        self.categoriesButton.image = NSImage(named: "categories")
        self.starredButton.image = NSImage(named: "star")
        self.tagsButton.image = NSImage(named: "tags")
        self.notesButton.image = NSImage(named: "notes")
        self.booksButton.image = NSImage(named: "book")
        self.pdfButton.image = NSImage(named: "pdf")




        
    }

    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddModalSegue" {
        
        }
    }

    @IBAction func newCategoryClicked(_ sender: NSButton) {
        self.performSegue(withIdentifier: "ToAddCategoriesSegue", sender: Any?.self)
    }

    @IBAction func addFeed(_ sender: NSButton) {
        print("click")

    }

}
