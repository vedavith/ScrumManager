//
//  ScrumManagerApp.swift
//  ScrumManager
//
//  Created by Vedavith Ravula on 14/10/23.
//

import SwiftUI

@main
struct ScrumManagerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
