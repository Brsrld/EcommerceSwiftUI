//
//  CategoryGridView.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 19.08.2021.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridlayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotationClockWise: false),
                    footer: SectionView(rotationClockWise: true)) {
                    ForEach(categories) { item in
                        CategoryItemView(category: item)
                    }//; Section
                }//; Loop
            })//; LazyGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//; Scroll
    }
}

// MARK: - Previews
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
