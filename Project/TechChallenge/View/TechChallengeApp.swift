//
//  TechChallengeApp.swift
//  TechChallenge
//
//  Created by Adrian Tineo Cabello on 27/7/21.
//

import SwiftUI

@main
struct TechChallengeApp: App {
    let transactionsData: TransactionsData = TransactionsData()

    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    TransactionListView(transactionsData: transactionsData, selectedCategory: .all)
                }
                .tabItem {
                    Label("Transactions", systemImage: "list.bullet")
                }
                
                NavigationView {
                    InsightsView(transactionsData: transactionsData)
                }
                .tabItem {
                    Label("Insights", systemImage: "chart.pie.fill")
                }
            }
        }
    }
}
