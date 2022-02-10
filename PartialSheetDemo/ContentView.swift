//
//  ContentView.swift
//  PartialSheetDemo
//
//  Created by Federico on 10/02/2022.
//

import SwiftUI
import HalfASheet

struct ContentView: View {
    @State private var isShowing = false
    @State private var amount = 0.0
    
    var body: some View {
        ZStack {
            Button("Show sheet") {
                isShowing.toggle()
            }
            HalfASheet(isPresented: $isShowing, title: "Sample Title") {
                VStack(spacing: 20) {
                    Image(systemName: "leaf")
                        .font(.system(size: 80))
                        .foregroundColor(.blue)
                    Slider(value: $amount, in: 0...100)
                    
                    Text("Sample content")
                        .italic()
                }
                .padding()
            }
            // Customise by editing these.
            .height(.proportional(0.40))
            .closeButtonColor(UIColor.white)
            .backgroundColor(.white)
            .contentInsets(EdgeInsets(top: 30, leading: 10, bottom: 30, trailing: 10))
        }
        .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
