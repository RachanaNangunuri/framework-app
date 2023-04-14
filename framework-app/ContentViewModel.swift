//
//  ContentViewModel.swift
//  framework-app
//
//  Created by Nangunuri Rachana on 13/04/23.
//

import Foundation
import app_framework

class ContentViewModel: ObservableObject {
    @Published var data: String = "--"
    let frameworkBundle = Bundle(for: SPPEntryPointViewModel.self)
    public func getDataFromUserDefaults() {
        self.data = UserDefaults.standard.string(forKey: "someKey") ?? "oo"
    }
}
