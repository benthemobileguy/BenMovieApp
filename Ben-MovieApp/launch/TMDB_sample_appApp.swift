//
//  TMDB_sample_appApp.swift
//  Ben-MovieApp
//
//  Created by Ben Bright on 07/06/22.
//

import SwiftUI

@main
struct TMDB_sample_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

struct TMDB_sample_appApp_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, World!")
    }
}
