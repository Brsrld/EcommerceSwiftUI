//
//  QuatityFavoritDetailView.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct QuatityFavoritDetailView: View {
    // MARK: - Properties
    
    @State private var counter: Int = 0
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
                
            }, label: {
                Image(systemName: "minus.circle")
            })//; Button
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })//; Button
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })//; Button
            
        })//; Hstack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

// MARK: - Previews
struct QuatityFavoritDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuatityFavoritDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
