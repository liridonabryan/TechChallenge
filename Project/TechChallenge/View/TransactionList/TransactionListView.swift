//
//  TransactionListView.swift
//  TechChallenge
//
//  Created by Adrian Tineo Cabello on 27/7/21.
//

import SwiftUI

struct TransactionListView: View {
    @State var transactionsData: TransactionsData
    @State var selectedCategory: TransactionModel.Category = .all
    @State var totalAmount = 0.0
    
    var body: some View {
        VStack {
            // Horizontal Filter View
            HorizontalScrollView(selectedCategory: self.$selectedCategory)
                .scaledToFit()
            
            // Transactions List
            List {
                ForEach(transactionsData.transactions) { transaction in
                    if selectedCategory == .all {
                        TransactionView(transaction: transaction)
                    } else if transaction.category == selectedCategory {
                        TransactionView(transaction: transaction)
                    }
                }
            }
            .animation(.easeIn)
            .listStyle(PlainListStyle())
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Transactions")
            
            // Total View
            TotalView(totalAmount: totalAmount, category: selectedCategory)
                .onChange(of: selectedCategory) { category in
                    totalAmount = transactionsData.calculateTotal(for: category)
                }
                .onAppear {
                    totalAmount = transactionsData.calculateTotal(for: selectedCategory)
            }
        }
    }
}

#if DEBUG
struct TransactionListView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionListView(transactionsData: TransactionsData(), selectedCategory: .all)
    }
}
#endif
