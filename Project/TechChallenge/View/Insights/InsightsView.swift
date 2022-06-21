//
//  InsightsView.swift
//  TechChallenge
//
//  Created by Adrian Tineo Cabello on 29/7/21.
//

import SwiftUI

struct InsightsView: View {
    @State var transactionsData: TransactionsData
    
    var body: some View {
        List {
            ForEach(TransactionModel.Category.allCases) { category in
                if category != .all {
                    HStack {
                        Text(category.rawValue)
                            .font(.headline)
                            .foregroundColor(category.color)
                        Spacer()
                        // TODO: calculate cummulative expense for each category
                        Text("$\(transactionsData.calculateTotal(for: category).formatted())")
                            .bold()
                            .secondary()
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Insights")
    }
}

#if DEBUG
struct InsightsView_Previews: PreviewProvider {
    static var previews: some View {
        InsightsView(transactionsData: TransactionsData())
            .previewLayout(.sizeThatFits)
    }
}
#endif
