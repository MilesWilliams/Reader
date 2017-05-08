//
//  RssFeedMenu.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/08.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class RssFeedMenu: NSViewController, NSCollectionViewDelegate, NSCollectionViewDataSource {

    @IBOutlet var rssCollectionView: NSScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: "RssWebsiteCollectionItem", for: indexPath)
        
        guard let rssItem = item as? RssWebsiteCollectionItem else{ return item}
        
        rssItem.view.wantsLayer = true
        rssItem.view.layer?.backgroundColor = NSColor.blue.cgColor
        
        return rssItem
    }
    
    @IBAction func RssCollectionClicked(_ sender: Any) {
    }
}
