//
//  BMIItem+CoreDataProperties.swift
//  BMI_Calculator
//
//  Created by Justice Ekeke on 17/12/2021.
//
//

import Foundation
import CoreData


extension BMIItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BMIItem> {
        return NSFetchRequest<BMIItem>(entityName: "BMIItem")
    }

    @NSManaged public var nBmi: Float
    @NSManaged public var nWeight: Float
    @NSManaged public var nDate: Date?

}

extension BMIItem : Identifiable {

}
