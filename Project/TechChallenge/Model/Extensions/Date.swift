//
//  Date.swift
//  TechChallenge
//
//  Created by Adrian Tineo Cabello on 27/7/21.
//

import Foundation

fileprivate let readingFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.timeZone = TimeZone(identifier: "UTC")!
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter
}()

fileprivate let printingFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.timeZone = TimeZone(identifier: "UTC")!
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.dateStyle = .medium
    return formatter
}()

extension Date {
    var formatted: String {
        printingFormatter.string(from: self)
    }

    init?(string: String) {
        guard let date = readingFormatter.date(from: string) else {
            return nil
        }
        self = date
    }
}
