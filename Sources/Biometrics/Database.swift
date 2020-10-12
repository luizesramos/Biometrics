//
//  Database.swift
//  
//
//  Created by Luiz Ramos on 10/11/20.
//

import Foundation
import GRDB

class Database {
    private var dbQueue: DatabaseQueue?

    init() throws {
        guard let databaseURL = try? FileManager.default.makeDatabaseUrl("db.sqlite") else {
            return
        }
        dbQueue = try DatabaseQueue(path: databaseURL.path)
    }
}

private extension FileManager {
    func makeDatabaseUrl(_ name: String) throws -> URL {
        try self.url(for: .applicationDirectory,
                     in: .userDomainMask,
                     appropriateFor: nil,
                     create: true)
            .appendingPathComponent(name)
    }
}
