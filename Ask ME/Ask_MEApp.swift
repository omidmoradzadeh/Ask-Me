//
//  Ask_MEApp.swift
//  Ask ME
//
//  Created by Omid on 5.08.2023.
//

import SwiftUI

@main
struct Ask_MEApp: App {
    
    @ObservedObject var appState : AppState = AppState()
    var body: some Scene {
        WindowGroup {
            if appState.isLogin {
                ContentView()
            }
            else{
                AuthView()
                    .environmentObject(appState)
            }
        }
    }
}
