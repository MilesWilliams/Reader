//
//  Feed+CoreDataProperties.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/08.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Foundation
import CoreData


extension Feed {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Feed> {
        return NSFetchRequest<Feed>(entityName: "Feed")
    }

    @NSManaged public var title: String?
    @NSManaged public var url: String?
    @NSManaged public var author: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var read: Bool
    @NSManaged public var starred: Bool
    @NSManaged public var image: String?
    @NSManaged public var ownerWebsite: Website?

}
