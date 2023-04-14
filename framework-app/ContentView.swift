//
//  ContentView.swift
//  framework-app
//
//  Created by Nangunuri Rachana on 06/04/23.
//

import SwiftUI
import app_framework
import leadPlusApp_framework
import secondApp_framework
import thirdApp_framework

struct ContentView: View {
    @ObservedObject var viewModel = SPPEntryPointViewModel()
    @ObservedObject var myVM = ContentViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!").padding(.top)
                Text("UserDefaults value - \(viewModel.value), \(myVM.data)")
                let frameworkBundle = Bundle(for: SPPEntryPointViewModel.self)
                if let myNewValue = frameworkBundle.infoDictionary?["MyNewKey"] as? String {
                    Text("Plist value - \(myNewValue)")
                }
                Button {
                    if let jsonURL = frameworkBundle.url(forResource: "Directions", withExtension: "json") {
                        print(jsonURL)
                    }
                } label: {
                    Text("Click me and see jsonURL printed")
                }
                Divider().frame(height: 10)
                NavigationLink(destination: SPPEntryPointView()) {
                    Image("mapPin")
                    Text("SPPEntryPoint")
                }.padding(.bottom)
                NavigationLink(destination: SecondAppEntryPointView()) {
                    Image("mapPin")
                    Text("SecondAppEntryPoint")
                }.padding(.bottom)
                NavigationLink(destination: ThirdAppEntryPointView()) {
                    Image("mapPin")
                    Text("ThirdAppEntryPoint")
                }.padding(.bottom)
                NavigationLink(destination: LeadPlusEntryPointView()) {
                    Image("mapPin")
                    Text("LeadPlusEntryPoint")
                }.padding(.bottom)
                Spacer()
            }.navigationTitle("My App")
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
