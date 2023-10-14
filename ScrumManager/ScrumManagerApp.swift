//
//  ScrumManagerApp.swift
//  ScrumManager
//
//  Created by Vedavith Ravula on 14/10/23.
//

import SwiftUI

@main
struct ScrumManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
