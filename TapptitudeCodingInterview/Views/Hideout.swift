//
//  Hideout.swift
//  TapptitudeCodingInterview
//
//  Created by Temporary User on 26.02.2024.
//

import SwiftUI

struct Hideout: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.pink.opacity(0.4).ignoresSafeArea()
                .navigationBarHidden(true)
            VStack{
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                .background(Color.black.opacity(0.1))
                .foregroundColor(.blue)
                .cornerRadius(15)
                
            }
        }
        .onAppear {
            NotificationCenter.default.post(name: Notification.Name("HideTabBar"), object: nil)
        }
        .onDisappear {
            NotificationCenter.default.post(name: Notification.Name("ShowTabBar"), object: nil)
        }
    }
}

struct Hideout_Previews: PreviewProvider {
    static var previews: some View {
        Hideout()
    }
}
