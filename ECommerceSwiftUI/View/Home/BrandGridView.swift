//
//  BrandGridView.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 19.08.2021.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridlayout, spacing: columnSpacing, content: {
                ForEach(brands) { item in
                    BrandItemView(brand: item)
                }//; Loop
            })//: Grid
            .frame(height: 200)
            .padding(15)
        })//; Scroll
    }
}

// MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
    }
}
