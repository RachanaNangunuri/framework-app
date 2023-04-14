//
//  File.swift
//  app-framework
//
//  Created by Nangunuri Rachana on 13/04/23.
//

import Foundation

public class SPPEntryPointViewModel: ObservableObject {
    @Published public var savedValue: Bool = false
    @Published public var value: String = ":<"
    public init() {}
    public func getDataFromUserDefaults() {
        self.value = UserDefaults.standard.string(forKey: "someKey") ?? "oo"
    }
    public func setDataInUserDefaults() {
        UserDefaults.standard.set("someValue", forKey: "someKey")
    }
}
