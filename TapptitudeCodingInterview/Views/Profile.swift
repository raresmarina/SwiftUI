//
//  Profile.swift
//  TapptitudeCodingInterview
//
//  Created by Temporary User on 26.02.2024.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack {
            Color.brown.opacity(0.6).ignoresSafeArea()
            VStack {
                Text("Profile")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
