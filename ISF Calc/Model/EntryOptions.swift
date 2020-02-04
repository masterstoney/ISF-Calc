//
//  EntryOptions.swift
//  ISF Calc
//
//  Created by Tendaishe Gwini on 2/3/20.
//  Copyright © 2020 Tendaishe Gwini. All rights reserved.
//

import UIKit

/**Data entry options used to name the fields*/
class EntryOptions {
    
    //MARK: Properties
    
    /**The title of data entry field and the units used for the field*/
    struct EntryDetails {
        let title: String
        let unit: String
    }
    
    /**Section title and description*/
    struct SectionInfo {
        let title: String
        let description: String
    }
    
    private var data: [[EntryDetails]] = [
        [EntryDetails(title: "Breakfast", unit: "units"), EntryDetails(title: "Lunch", unit: "units"), EntryDetails(title: "Supper", unit: "units"), EntryDetails(title: "Basal", unit: "units")],
        [EntryDetails(title: "Morning", unit: "mg/dL"), EntryDetails(title: "Afternoon", unit: "mg/dL"), EntryDetails(title: "Evening", unit: "mg/dL"), EntryDetails(title: "Basal", unit: "mg/dL"), EntryDetails(title: "Target Glucose Level", unit: "mg/dL")],
        [EntryDetails(title: "Total Insulin", unit: "units"), EntryDetails(title: "Highest Glucose reading", unit: "mg/dL"), EntryDetails(title: "Target Glucose Level", unit: "mg/dL")]
    ]
    
    private var sectionData: [SectionInfo] = [
        SectionInfo(title: "Insulin", description: "The number of units of insulin administered to the patient"),
        SectionInfo(title: "Glucose", description: "The glucose levels of the patient"),
        SectionInfo(title: "Quick Calculation", description: "Total units of insulin administered and highest glucose level reading")
    ]
    
    //MARK: Methods
    
    /**Retrieve all available data entry options*/
    func options() -> [[EntryDetails]] {
        return data
    }
    
    /**Retrieve the information for a tableview section*/
    func sections() -> [SectionInfo] {
        return sectionData
    }
    
}
