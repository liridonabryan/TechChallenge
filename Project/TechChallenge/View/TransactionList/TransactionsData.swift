//
//  TransactionsData.swift
//  TechChallenge
//
//  Created by Liridona Braha on 21/06/2022.
//

import Foundation

class TransactionsData {
    var transactions: [TransactionModel] = ModelData.sampleTransactions
    
    func calculateTotal(for category: TransactionModel.Category) -> Double {
        var amounts = 0.0
        transactions.forEach { item in
            guard item.pinned == true else { return }
            if category == .all {
                amounts += item.amount
            } else if item.category == category {
                amounts += item.amount
            }
        }
        return amounts
    }
    
//    func togglePinned(for transaction: TransactionModel) {
//
//
//    }
}
