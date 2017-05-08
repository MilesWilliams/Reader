//
//  XMLParser.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/07.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Foundation
import SWXMLHash

class XmlParser {
 
    // Get the meta data such as title, image and author
    func getRssFeedMetaData(data:Data) -> (title:String?, faviconUrl:String?) {
    
        let xml = SWXMLHash.parse(data)
        
        let title = xml["rss"]["channel"]["title"].element?.text
        let faviconUrl = (xml["rss"]["channel"]["link"].element?.text)! + "/favicon.png"

        return (title, faviconUrl)
    }
}
