//
//  CustomTabBar.swift
//  TapptitudeCodingInterview
//
//  Created by Temporary User on 26.02.2024.
//


import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    var tabSymbols: [String]
    
    
    var body: some View {
        HStack {
            ForEach(0..<tabSymbols.count, id: \.self) { index in
                Spacer()
                Button(action: {
                    selectedTab = index
                }) {
                    Image(systemName: tabSymbols[index])
                        .foregroundColor(selectedTab == index ? .blue : .gray)
                        .font(.system(size: 25).bold())
                }
                Spacer()
            }
        }
        .frame(height: 100)
        .background(Color.white)
        .cornerRadius(25)
        .padding()
    }
}
struct CustomTabBar_Previews: PreviewProvider {
    @State static var selectedTab: Int = 1
    
    static var previews: some View {
        CustomTabBar(selectedTab: $selectedTab, tabSymbols: ["house.fill", "magnifyingglass", "clock", "person.fill"])
    }
}
