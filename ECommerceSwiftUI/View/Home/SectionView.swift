//
//  SectionView.swift
//  ECommerceSwiftUI
//
//  Created by Baris Saraldi on 19.08.2021.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    
    @State var rotationClockWise: Bool
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotationClockWise ? 90 : -90))
            
            Spacer()
            
        }//; VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - Previews
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotationClockWise: true).previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
