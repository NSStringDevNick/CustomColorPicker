//
//  CustomColor.swift
//  CustomColorPicker
//
//  Created by Mikita  on 28/03/2022.
//

import SwiftUI

struct CustomColor: View {
    
    @Binding var selectredColor: Color
    
    var colors: [Color] = [
        .red, .blue, .gray, .green, .black, .mint, .cyan, .purple, .yellow, .pink, .white, .teal
    ]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(colors, id: \.self) { color in
                    Circle()
                        .foregroundColor(color)
                        .frame(width: 45, height: 45)
                        .opacity(color == selectredColor ? 0.5 : 1.0)
                        .scaleEffect(color == selectredColor ? 1.1 : 1.0)
                        .onTapGesture {
                            selectredColor = color
                        }
                }
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(20)
            .padding(.horizontal)
        }
    }
}
struct CustomColor_Previews: PreviewProvider {
    static var previews: some View {
        CustomColor(selectredColor: .constant(.blue))
    }
}
