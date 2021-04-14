//
//  CoverImageView.swift
//  Africa
//
//  Created by Miguel Angel Mejia Quiroga on 14/04/21.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    // MARK: - body
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: loop
        }//: Tab
        .tabViewStyle(PageTabViewStyle())
    }
}
// MARK: - preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
