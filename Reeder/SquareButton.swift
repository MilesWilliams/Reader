//
//  SquareButton.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/07.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

@IBDesignable
class SquareButton: NSButton {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.white.cgColor
        self.layer?.borderColor = NSColor.blue.cgColor
    }
    @IBInspectable var borderRadius: CGFloat = 0 {
        
        didSet{
            self.wantsLayer = true
            self.layer?.cornerRadius = borderRadius
        }
    }
    
    @IBInspectable var borderColor: NSColor = NSColor.clear{
        
        didSet{
            self.wantsLayer = true
            self.layer?.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var backgroundColor: NSColor = NSColor.clear{
        
        didSet{
            self.wantsLayer = true
            self.layer?.borderColor = backgroundColor.cgColor
        }
    }

    
    
}
