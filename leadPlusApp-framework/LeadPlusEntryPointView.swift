//
//  LeadPlusEntryPointView.swift
//  leadPlusApp-framework
//
//  Created by Nangunuri Rachana on 14/04/23.
//

import SwiftUI

public struct LeadPlusEntryPointView: View {
    public init() {}
    public var body: some View {
        VStack {
            Image("plus")
            Text("Welcome to lead plus app")
        }
    }
}

struct LeadPlusEntryPointView_Previews: PreviewProvider {
    static var previews: some View {
        LeadPlusEntryPointView()
    }
}
