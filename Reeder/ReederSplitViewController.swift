//
//  ReederSplitViewController.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/06.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class ReederSplitViewController: NSSplitViewController {

    @IBOutlet var NavigationSplitViewItem: NSSplitViewItem!
    @IBOutlet var ContentSplitViewControllerItem: NSSplitViewItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer = true
//        self.view.layer?.backgroundColor = NSColor.green.cgColor
    }
    
}
