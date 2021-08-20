//
//  RatingsSiesDetailView.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct RatingsSiesDetailView: View {
    // MARK: - Properties
    
    let sizes: [String] = ["XS","S","M","L","XL"]
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    Button(action: {}, label: {
                        ForEach(0 ..< 5) { item in
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }//; Loop
                    })//; Button
                })//; HStack
            })//; Vstack
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2)
                                )
                        })//; Button
                    }//; Loop
                })//; HStack
            })//; VStack
        })//; HStack
    }
}

// MARK: - Previews
struct RatingsSiesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSiesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
