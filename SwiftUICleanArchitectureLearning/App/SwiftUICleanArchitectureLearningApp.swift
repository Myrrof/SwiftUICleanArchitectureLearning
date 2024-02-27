//
//  SwiftUICleanArchitectureLearningApp.swift
//  SwiftUICleanArchitectureLearning
//
//  Created by Mathieu CHELIM on 02/02/2024.
//

import SwiftUI
import HomePage

@main
struct SwiftUICleanArchitectureLearningApp: App {
	
	// Intègration d'un AppDelegate UIKit dans SwiftUI. AppDelegate doit être une classe qui adhère au protocole UIApplicationDelegate.
	@UIApplicationDelegateAdaptor(AppDelegate.self)
	var appDelegate
	
    var body: some Scene {
        WindowGroup {
			HomePageContentView()
        }
    }
}
