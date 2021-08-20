//
//  HeaderDetailView.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        })//; VStack
        .foregroundColor(.white)
    }
}

// MARK: - Previews
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
