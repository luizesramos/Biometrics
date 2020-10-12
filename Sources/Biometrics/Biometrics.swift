//
//  Biometrics.swift
//  
//
//  Created by Luiz Ramos on 10/11/20.
//

import Foundation

/// Rates the quality of sleep
public enum SleepRating {
    case none, poor, good
}

public struct Biometrics {
    /// Date and time of record
    let dateTime: Date
    
    /// Systolic blood pressure in mmHg
    let systolicMmHg: Int
    
    /// Diastolic blood pressure in mmHg
    let diastolicMmHg: Int
    
    /// Rating of the quality of sleep
    let sleepQuality: SleepRating
    
    /// Waist measurement in inches
    let waist: Double
    
    /// Weight in pounds
    let weight: Double
    
    public init(dateTime: Date = .init(),
                systolicMmHg: Int,
                diastolicMmHg: Int,
                sleepQuality: SleepRating = .none,
                waist: Double = 0.0,
                weight: Double = 0.0) {
        self.dateTime = dateTime
        self.systolicMmHg = systolicMmHg
        self.diastolicMmHg = diastolicMmHg
        self.sleepQuality = sleepQuality
        self.waist = waist
        self.weight = weight
    }
}

