//
//  Search.swift
//  TapptitudeCodingInterview
//
//  Created by Temporary User on 26.02.2024.
//

import SwiftUI

struct Search: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3).ignoresSafeArea()
            VStack {
                Text("Search")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
