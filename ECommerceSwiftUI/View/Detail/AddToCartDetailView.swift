//
//  AddToCartDetailView.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Text("Add to cart".uppercased())
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
        })//; Button
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

// MARK: - Previews
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
