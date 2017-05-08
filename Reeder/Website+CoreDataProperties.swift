//
//  Website+CoreDataProperties.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/08.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Foundation
import CoreData


extension Website {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Website> {
        return NSFetchRequest<Website>(entityName: "Website")
    }

    @NSManaged public var url: String?
    @NSManaged public var name: String?
    @NSManaged public var favicon: String?
    @NSManaged public var category: String?
    @NSManaged public var websiteFeeds: NSSet?
    @NSManaged public var websiteCategory: NSSet?

}

// MARK: Generated accessors for websiteFeeds
extension Website {

    @objc(addWebsiteFeedsObject:)
    @NSManaged public func addToWebsiteFeeds(_ value: Feed)

    @objc(removeWebsiteFeedsObject:)
    @NSManaged public func removeFromWebsiteFeeds(_ value: Feed)

    @objc(addWebsiteFeeds:)
    @NSManaged public func addToWebsiteFeeds(_ values: NSSet)

    @objc(removeWebsiteFeeds:)
    @NSManaged public func removeFromWebsiteFeeds(_ values: NSSet)

}

// MARK: Generated accessors for websiteCategory
extension Website {

    @objc(addWebsiteCategoryObject:)
    @NSManaged public func addToWebsiteCategory(_ value: Categories)

    @objc(removeWebsiteCategoryObject:)
    @NSManaged public func removeFromWebsiteCategory(_ value: Categories)

    @objc(addWebsiteCategory:)
    @NSManaged public func addToWebsiteCategory(_ values: NSSet)

    @objc(removeWebsiteCategory:)
    @NSManaged public func removeFromWebsiteCategory(_ values: NSSet)

}
