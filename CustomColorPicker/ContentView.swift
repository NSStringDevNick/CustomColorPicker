//
//  ContentView.swift
//  CustomColorPicker
//
//  Created by Mikita  on 28/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedColor: Color = .red
    
    var body: some View {
        VStack {
            CustomColor(selectredColor: $selectedColor)
            Spacer()
            Circle()
                .frame(width: 350, height: 350)
                .foregroundColor(selectedColor)
            Text("Selected color: \(selectedColor.description)")
                .font(.title2)
                .foregroundColor(selectedColor)
                Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
