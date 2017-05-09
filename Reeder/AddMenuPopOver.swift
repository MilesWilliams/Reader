//
//  AddMenuPopOver.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/09.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class AddMenuPopOver: NSViewController, NSTableViewDataSource, NSTableViewDelegate {

    @IBOutlet var menuTable: NSTableView!
    @IBOutlet var newFeedButton: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.menuTable.wantsLayer = true
        self.menuTable.layer?.backgroundColor = NSColor.white.cgColor
        

    }
    
    @IBAction func newFeedButtonClicked(_ sender: NSButton) {
        self.performSegue(withIdentifier: "ToAddModalSegue", sender: Any?.self)
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 4
    }
    
    
//    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
//        if tableColumn?.identifier == "importantColumn" {
//            if tableRow
//        }
//    }

}
