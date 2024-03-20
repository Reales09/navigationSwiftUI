//
//  SegundaVista.swift
//  navegationSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 20/03/24.
//

import SwiftUI

struct SegundaVista: View {
    var body: some View {
        Text("Segunda vista")
            .navigationTitle("Segunda vista")
        NavigationLink(destination: TercerVista()){
            Text("Ir a tercer vista")
        }
    }
}

