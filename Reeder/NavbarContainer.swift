//
//  NavbarContainer.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/07.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class NavbarContainer: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        let sidebarGrey = NSColor(red: 24/255.0, green: 25/255.0, blue: 29/255.0, alpha: 1.0)
        self.wantsLayer = true
        self.layer?.backgroundColor = sidebarGrey.cgColor
        // Drawing code here.
    }
    
}
