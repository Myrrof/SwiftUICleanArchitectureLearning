//
//  SwiftUICleanArchitectureLearning
//  AppDelegate
//
//  Created by Mathieu CHELIM on 26/02/2024.
//

/// One of the few places, besides Domain, where Data is imported because the AppDelegate acts as a layer that registers all services.

import UIKit
import Data
import DependencyInjection
import RunningContext

/// Need AppDelegate to execute all registers
final class AppDelegate: NSObject, UIApplicationDelegate {
	
	// MARK: - Internal methods
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
		
		// Initialisation nécessaire
		if RunningContext.isRunningPreviews {
			registerAllServicesMock()
		} else {
			registerAllServices()
		}
		
		return true
	}
		
	// MARK: - Private methods
	private func registerAllServices() {
		DependencyInjection.registerDataServices()
	}
	
	private func registerAllServicesMock() {
		DependencyInjection.registerDataServicesMock()
	}
}
