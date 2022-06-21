//
//  Double.swift
//  TechChallenge
//
//  Created by Adrian Tineo Cabello on 27/7/21.
//

import Foundation

extension Double {
    func formatted(hasDecimals: Bool = true) -> String {
        NSString(format: hasDecimals ? "%.2f" : "%.0f", self) as String
    }
}
