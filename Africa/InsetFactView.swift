//
//  InsetFactView.swift
//  Africa
//
//  Created by Miguel Angel Mejia Quiroga on 14/04/21.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - properties
    let animal: Animal
    // MARK: - body
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(idealWidth: 168, minHeight: 148, maxHeight: 180)
        }//: BOX
    }
}
// MARK: - preview
struct InsetFactView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
