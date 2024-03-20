//
//  VentanaModal.swift
//  navegationSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 20/03/24.
//

import SwiftUI

struct VentanaModal: View {
    @Environment(\.presentationMode) var back
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Ventana Modal")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .bold()
                
                Button("Cerrar"){
                    back.wrappedValue.dismiss()
                }
            }
            
        }
    }
}

