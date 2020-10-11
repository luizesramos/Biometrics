//
//  Database.swift
//  
//
//  Created by Luiz Ramos on 10/11/20.
//

import UIKit
import GRDB

class Database {

    private var dbQueue: DatabaseQueue?

    init() throws {
        let databaseURL = try FileManager.default
            .url(for: .applicationDirectory,
                 in: .userDomainMask,
                 appropriateFor: nil,
                 create: true)
            .appendingPathComponent("db.sqlite")

        dbQueue = try DatabaseQueue(path: databaseURL.path)
    }
}
