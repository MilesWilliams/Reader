//
//  Navigation.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/06.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class NavigationViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {

    @IBOutlet var navigationTableView: NSTableView!

    @IBOutlet var settingsButton: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.blue.cgColor
        self.navigationTableView.backgroundColor = NSColor.blue
        self.navigationTableView.reloadData()

    }
    
    func numberOfRows(in tableView:NSTableView) -> Int{
        
        return 6
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {

        let cell = tableView.make(withIdentifier: "addCell", owner: self) as? NSTableCellView
        cell?.imageView?.image = NSImage(named: "add")
        
        return cell
    }
}
