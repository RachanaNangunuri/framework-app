//
//  ThirdAppEntryPointView.swift
//  thirdApp-framework
//
//  Created by Nangunuri Rachana on 14/04/23.
//

import SwiftUI

public struct ThirdAppEntryPointView: View {
    public init() {}
    public var body: some View {
        VStack {
            Image("three")
            Text("Welcome to Third app")
        }
    }
}

struct ThirdAppEntryPointView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdAppEntryPointView()
    }
}
