//
//  SPPEntryPointView.swift
//  app-framework
//
//  Created by Nangunuri Rachana on 06/04/23.
//

import SwiftUI

public struct SPPEntryPointView: View {
    @ObservedObject var viewModel = SPPEntryPointViewModel()
    public init() {}
    public var body: some View {
        VStack(alignment: .leading) {
            Text("This is SPPEntryPoint view")
                .navigationBarTitle("SPPEntryPoint View")
            Button {
                viewModel.setDataInUserDefaults()
                viewModel.getDataFromUserDefaults()
            } label: {
                Text("Save")
            }
            Text(viewModel.value)
            HStack {
                Image("mapPin")
                Text("Location")
            }.onTapGesture {
                viewModel.savedValue.toggle()
            }
            HStack {
                Image("Sort")
                Text("Sort")
                if viewModel.savedValue {
                    Text("Saved")
                }
            }
            HStack {
                Image("filter")
                Text("Filter")
            }
        }.onAppear() {
            viewModel.getDataFromUserDefaults()
        }
    }
}

struct SPPEntryPointView_Previews: PreviewProvider {
    static var previews: some View {
        SPPEntryPointView()
    }
}
