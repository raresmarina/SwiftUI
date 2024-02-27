import SwiftUI
//
//  ContentView.swift
// TapptitudeCodingInterview
//
// Created by Temporary User on 26.02.2024.

struct ContentView: View {
    @State private var tabSymbols: [String] = ["house.fill", "magnifyingglass", "clock", "person.fill"]
    @State private var iterable = true
    @State private var selectedTab: Int = 0
    @State private var showTabBar = true
    
    var body: some View {
        ZStack{
            VStack {
                TabView(selection: $selectedTab) {
                    if iterable{
                        ForEach(0..<tabSymbols.count, id: \.self) { index in
                            switch index {
                            case 0:
                                Home()
                                    .tag(index)
                            case 1:
                                Search()
                                    .tag(index)
                            case 2:
                                History(tabSymbols: $tabSymbols, iterable: $iterable)
                                    .tag(index)
                            case 3:
                                Profile()
                                    .tag(index)
                            default:
                                EmptyView()
                            }
                        }
                    }
                }
            }
            if showTabBar {
                VStack {
                    Spacer()
                    CustomTabBar(selectedTab: $selectedTab, tabSymbols: tabSymbols)
                }
            }
        }
        .onAppear {
            NotificationCenter.default.addObserver(forName: Notification.Name("HideTabBar"), object: nil, queue: .main) { _ in
                withAnimation {
                    self.showTabBar = false
                }
            }
            NotificationCenter.default.addObserver(forName: Notification.Name("ShowTabBar"), object: nil, queue: .main) { _ in
                withAnimation {
                    self.showTabBar = true
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
