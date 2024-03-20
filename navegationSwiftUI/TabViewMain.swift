//
//  TabViewMain.swift
//  navegationSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 20/03/24.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            Vista2().tabItem {
                Label("Vista 2", systemImage: "plus")
            }
            TercerVista().tabItem {
                Label("Camera", systemImage: "camera")
            }
        }
    }
}

#Preview {
    TabViewMain()
}
