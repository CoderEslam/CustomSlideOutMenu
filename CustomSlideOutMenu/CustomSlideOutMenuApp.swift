//
//  CustomSlideOutMenuApp.swift
//  CustomSlideOutMenu
//
//  Created by Eslam Ghazy on 12/9/23.
//

import SwiftUI

@main
struct CustomSlideOutMenuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
