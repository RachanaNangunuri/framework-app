//
//  SPPEntryPointView.swift
//  app-framework
//
//  Created by Nangunuri Rachana on 06/04/23.
//

import SwiftUI

public struct SPPEntryPointView: View {
    public init() {}

    public var body: some View {
        VStack(alignment: .leading) {
            Text("This is SPPEntryPoint view")
                .navigationBarTitle("SPPEntryPoint View")
            HStack {
                Image("mapPin")
                Text("Location")
            }
            HStack {
                Image("mapPin")
                Text("Sort")
            }
            HStack {
                Image("mapPin")
                Text("Filter")
            }
        }
    }
}

struct SPPEntryPointView_Previews: PreviewProvider {
    static var previews: some View {
        SPPEntryPointView()
    }
}
