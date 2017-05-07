//
//  addFeedModalViewController.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/07.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Cocoa

class addFeedModalViewController: NSViewController {
    
    @IBOutlet var addFeedButton: NSButton!
    @IBOutlet var urlTextField: NSTextField!
    @IBOutlet var addModal: NSBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.addFeedButton.wantsLayer = true
        self.addFeedButton.layer?.borderColor = NSColor.blue.cgColor
        urlTextField.stringValue = "https://www.thenextweb.com/feed/"
        
    }
    
    
    @IBAction func addFeed(_ sender: NSButton) {

        if let url = URL(string: urlTextField.stringValue) {
            
            URLSession.shared.dataTask(with: url) { (data:Data?, response:URLResponse?, error:Error?) in
                if error != nil {
                    print(error as Any)
                } else {
                    if data != nil {
                        let parser = XmlParser()
                        parser.getRssFeedMetaData(data: data!)
                        
                    }
                }
            }.resume()
            
            urlTextField.stringValue = ""
        }
    }
    
}
