//
//  SwiftUI_FructusApp.swift
//  SwiftUI-Fructus
//
//  Created by Mohammad Safad on 15/01/2021.
//

import SwiftUI

@main
struct SwiftUI_FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardView()
            } else {
                ContentView()
            }
           
        }
    }
}
