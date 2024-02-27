//
//  Home.swift
//  TapptitudeCodingInterview
//
//  Created by Temporary User on 26.02.2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.indigo.opacity(0.6).ignoresSafeArea()
                VStack {
                    Text("Home")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(5)
                    NavigationLink(destination: Hideout()) {
                        Text("Push Next")
                            .foregroundColor(.blue)
                            .padding()
                            .background(Color.black.opacity(0.1))
                            .cornerRadius(10)
                    }
                    .navigationBarHidden(true)
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
        
}
