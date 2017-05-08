//
//  Categories+CoreDataProperties.swift
//  Reeder
//
//  Created by MIles Work on 2017/05/08.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import Foundation
import CoreData


extension Categories {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Categories> {
        return NSFetchRequest<Categories>(entityName: "Categories")
    }

    @NSManaged public var name: String?
    @NSManaged public var icon: NSData?
    @NSManaged public var categoryDescription: String?
    @NSManaged public var websites: String?
    @NSManaged public var website: NSSet?

}

// MARK: Generated accessors for website
extension Categories {

    @objc(addWebsiteObject:)
    @NSManaged public func addToWebsite(_ value: Website)

    @objc(removeWebsiteObject:)
    @NSManaged public func removeFromWebsite(_ value: Website)

    @objc(addWebsite:)
    @NSManaged public func addToWebsite(_ values: NSSet)

    @objc(removeWebsite:)
    @NSManaged public func removeFromWebsite(_ values: NSSet)

}
