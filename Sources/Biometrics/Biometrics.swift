//
//  Biometrics.swift
//  
//
//  Created by Luiz Ramos on 10/11/20.
//

/// Rates the quality of sleep
enum SleepRating {
    case none, poor, good
}

struct Biometrics {
    /// Date and time of record
    let dateTime: String

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
}

