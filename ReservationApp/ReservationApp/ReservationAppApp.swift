//
//  ReservationAppApp.swift
//  ReservationApp
//
//  Created by admin on 3/11/24.
//

import SwiftUI

@main
struct ReservationAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Login()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
