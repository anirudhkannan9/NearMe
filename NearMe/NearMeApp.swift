//
//  NearMeApp.swift
//  NearMe
//
//  Created by Anirudh Kannan on 23/6/2021.
//

import SwiftUI

@main
struct NearMeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
