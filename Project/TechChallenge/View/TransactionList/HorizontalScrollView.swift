//
//  HorizontalScrollView.swift
//  TechChallenge
//
//  Created by Liridona Braha on 21/06/2022.
//

import SwiftUI

struct HorizontalScrollView: View {
    
    @Binding var selectedCategory: TransactionModel.Category
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 0) {
                ForEach(TransactionModel.Category.allCases, id: \.rawValue) { index in
                    Button {
                        print(index.rawValue)
                        selectedCategory = index
                    } label: {
                        Text("\(index.rawValue)")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(8)
                            .padding(.trailing, 10)
                            .padding(.leading, 10)
                            .background(index.color)
                            .clipShape(Capsule())
                        
                    }
                }
                .padding(4)
            }
            .padding(8)
            .background(Color.accentColor.opacity(0.8))
            .font(.title2)
        }
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView(selectedCategory: .constant(.food))
    }
}
