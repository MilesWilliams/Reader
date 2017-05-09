//
//  RssWebsiteCollectionItem.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/08.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class RssWebsiteCollectionItem: NSCollectionViewItem {

    let selectedWebsiteBorderWidth : CGFloat = 1
    let selctedBackgroundColor = NSColor(red: 181/255.0, green: 186/255.0, blue: 196/255.0, alpha: 0.43)
    
    override var isSelected: Bool {
    
        didSet {
        
            if isSelected {

                view.layer?.backgroundColor = selctedBackgroundColor.cgColor
            } else {

                view.layer?.backgroundColor = NSColor.clear.cgColor
                
            }
        
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        view.wantsLayer = true
        view.layer?.borderColor = NSColor.gray.cgColor
    }
    
    @IBOutlet var websiteFavicon: NSImageView!
    @IBOutlet var webSiteTitle: NSTextField!
    @IBOutlet var websiteCategory: NSTextField!
    
}
