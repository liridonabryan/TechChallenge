//
//  TotalView.swift
//  TechChallenge
//
//  Created by Liridona Braha on 21/06/2022.
//

import SwiftUI

struct TotalView: View {
   
    var totalAmount: Double = 0.0
    var category: TransactionModel.Category = .food
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Total spent:")
                    .secondary()
                    .padding(.top)
            }
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(category.rawValue)
                    .font(.headline)
                    .foregroundColor(category.color)
                
                Text("$\(totalAmount.formatted())")
                    .bold()
                    .secondary()
                
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8.0)
                .strokeBorder(lineWidth: 2.0))
        .padding(.horizontal, 8)
        
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView()
    }
}
