//
//  ReederSplitView.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/06.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class ReederSplitView: NSSplitView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    override var dividerThickness:CGFloat
        {
        get { return 0.0 }
    }
    
}
