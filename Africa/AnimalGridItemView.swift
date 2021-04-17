//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Miguel Angel Mejia Quiroga on 16/04/21.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: - properties
    let animal: Animal
    //MARK: - body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}
//MARK: - preview
struct AnimalGridItemView_Previews: PreviewProvider {
    static var animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
