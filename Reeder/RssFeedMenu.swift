//
//  RssFeedMenu.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/08.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class RssFeedMenu: NSViewController, NSCollectionViewDelegate {


    @IBOutlet var rssCollectionView: NSCollectionView!
    var websitesMeta : [Website] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
//        self.fetchAllWebsiteMetaData()
        rssCollectionView.delegate = self

        
        let nib = NSNib(nibNamed: "RssWebsiteCollectionItem", bundle: nil)
        rssCollectionView.register(nib, forItemWithIdentifier: "rssCollectionViewItem")
        
    }
    
//    func fetchAllWebsiteMetaData() {
//        
//        if let context = (NSApplication.shared().delegate as? AppDelegate)?.persistentContainer.viewContext{
//            
//            let fetchWebsites = Website.fetchRequest() as NSFetchRequest<Website>
//                fetchWebsites.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
//            
//            do {
//                // Set them to the class property
//                websitesMeta = try context.fetch(fetchWebsites)
//                print(websitesMeta.count)
//                
//            } catch {}
//    
//        }
//    }
//    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        print(websitesMeta.count)
        return 2
    }
//
//    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
//        let item = collectionView.makeItem(withIdentifier: "RssWebsiteCollectionItem", for: indexPath)
//        
//        guard let rssItem = item as? RssWebsiteCollectionItem else{ return item}
//        let favicon = NSImage(contentsOf: NSURL(string:websitesMeta[indexPath.item].favicon!)! as URL)
//        
////        print(favicon)
//        rssItem.webSiteTitle.stringValue = websitesMeta[indexPath.item].name!
//        rssItem.websiteCategory.stringValue = websitesMeta[indexPath.item].category!
//        rssItem.websiteFavicon.image = favicon
////        rssItem.view.wantsLayer = true
////        rssItem.view.layer?.backgroundColor = NSColor.blue.cgColor
//        
//        return rssItem
//    }
    
    @IBAction func RssCollectionClicked(_ sender: Any) {
    }
}
