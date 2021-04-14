//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Miguel Angel Mejia Quiroga on 14/04/21.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: - properties
    let animal: Animal
    //MARK: - body
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack (alignment: .leading, spacing: 8){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }//: VSTACK
        }//: HSTACK
    }
}
//MARK: - preview
struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
