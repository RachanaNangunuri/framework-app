//
//  ContentView.swift
//  framework-app
//
//  Created by Nangunuri Rachana on 06/04/23.
//

import SwiftUI
import app_framework

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!").padding(.top)
                Spacer()
                NavigationLink(destination: SPPEntryPointView()) {
                    Image("Sort")
                    Text("SPPEntryPoint")
                }
                Spacer()
                NavigationLink(destination: SPPEntryPointView()) {
                    Image("filter")
                    Text("SPPEntryPoint")
                }
                Spacer()
            }
            .navigationTitle("My App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
