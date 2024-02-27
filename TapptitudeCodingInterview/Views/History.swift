//
// History.swift
//  TapptitudeCodingInterview
//
//  Created by Temporary User on 26.02.2024.
//
import SwiftUI

struct History: View {
    @Binding var tabSymbols: [String]
    @Binding var iterable: Bool // Adaugarea legaturii cu iterable
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.3).ignoresSafeArea()
            VStack {
                Text("History")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(7)
                ChangeTabButton(tabSymbols: $tabSymbols, iterable: $iterable)
            }
        }
    }
    
}

struct ChangeTabButton: View {
    @Binding var tabSymbols: [String]
    @Binding var iterable: Bool
    @State private var toggle = false
    @State private var isSelected = true
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
            if isSelected {
                tabSymbols = ["house.fill", "magnifyingglass", "clock", "person.fill"]
            } else {
                tabSymbols = ["arrow.left", "trash","star.slash.fill","star.fill" ]
            }
            iterable = isSelected
        }) {
            Text(isSelected ? "Edit" : "Save")
        }
        .foregroundColor(.blue)
        .padding(7)
        .background(Color.black.opacity(0.1))
        .cornerRadius(10)
    }
}
struct History_Preview: PreviewProvider {
    @State static var tabSymbols: [String] = ["house.fill", "magnifyingglass", "clock", "person.fill"]
    @State static var iterable = true

    static var previews: some View {
        History(tabSymbols: $tabSymbols, iterable: $iterable)
    }
}
