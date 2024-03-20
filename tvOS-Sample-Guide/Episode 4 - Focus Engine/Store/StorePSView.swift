//
//  StoreView.swift
//  tvOS-Sample-PlayStation-Dashboard-Concept
//
//  Created by Abdul Karim Khan on 25/02/2024.
//

import SwiftUI

struct StorePSView: View {
    
    var arrMedia = ["ic-media", "ic-media-1", "ic-media-2", "ic-media-3", "ic-media-4", "ic-media-5", "ic-media-6", "ic-media-10", "ic-media-9", "ic-media-8", "ic-media-7", "ic-media-11"]
    
    let columns = Array(repeating: GridItem(spacing: 30), count: 6)

    var body: some View {
        VStack {
            ScrollView(.vertical) {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(arrMedia, id: \.self) { media in
                        Button {
                            
                        } label: {
                            Image(media)
                                .resizable()
                                .frame(width: 270, height: 270)
                        }
                        .buttonStyle(.card)
                    }
                }
            }
        }
    }
}
