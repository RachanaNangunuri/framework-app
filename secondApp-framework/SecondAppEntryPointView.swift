//
//  SecondAppEntryPointView.swift
//  secondApp-framework
//
//  Created by Nangunuri Rachana on 14/04/23.
//

import SwiftUI

public struct SecondAppEntryPointView: View {
    public init() {}
    public var body: some View {
        VStack {
            Image("two")
            Text("Welcome to second app")
        }
    }
}

struct SecondAppEntryPointView_Previews: PreviewProvider {
    static var previews: some View {
        SecondAppEntryPointView()
    }
}
