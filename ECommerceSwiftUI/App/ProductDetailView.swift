//
//  ProductDetailView.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        VStack (alignment: .leading, spacing: 5, content: {
            
            NavigationBarDetailView()
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0, content: {
                
                RatingsSiesDetailView()
                    .padding(.top, 40)
                    .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description
                         ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//; Scroll
                
                QuatityFavoritDetailView()
                    .padding(.vertical, 10)
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
            })//; VStack
            .padding()
            .background(Color.white.clipShape(CustomShape()))
            .padding(.top, -135)
            
        })//; Vstack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - Previews
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
