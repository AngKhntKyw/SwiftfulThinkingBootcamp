//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Digital Base on 12/5/25.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        
        // background layer
        ZStack {
            RadialGradient(colors: [.red,.blue], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea(.all)
            
        // foreground layer
            // if user is signed in
            // profile view
            // else
            // onboarding view
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnBoardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))

            }
        }
    }
}

#Preview {
    IntroView()
}
