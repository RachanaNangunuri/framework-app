//
//  ContentView.swift
//  framework-app
//
//  Created by Nangunuri Rachana on 06/04/23.
//

import SwiftUI
import app_framework

struct ContentView: View {
    @ObservedObject var viewModel = SPPEntryPointViewModel()
    @ObservedObject var myVM = ContentViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!").padding(.top)
                Text(viewModel.value)
                Text(myVM.data)
                Spacer()
                let frameworkBundle = Bundle(for: SPPEntryPointViewModel.self)
                if let myNewValue = frameworkBundle.infoDictionary?["MyNewKey"] as? String {
                    Text(myNewValue)
                }
                Button {
                    if let jsonURL = frameworkBundle.url(forResource: "Directions", withExtension: "json") {
                        print(jsonURL)
                    }
                } label: {
                    Text("Click me!")
                }
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
            }
            .navigationTitle("My App")
        }.onAppear() {
            viewModel.getDataFromUserDefaults()
            myVM.getDataFromUserDefaults()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
