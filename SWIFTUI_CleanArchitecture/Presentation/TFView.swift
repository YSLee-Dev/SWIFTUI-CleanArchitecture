//
//  TFView.swift
//  SWIFTUI_CleanArchitecture
//
//  Created by 이윤수 on 2023/05/14.
//

import SwiftUI

struct TFView: View {
    @ObservedObject var viewModel : TFViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                TextField("INSERT", text: $viewModel.insertText)
                Button {
                    viewModel.doneTap.send(Void())
                } label: {
                    Text("DONE")
                }
            }
            Text(viewModel.doneTapValue)
        }
        .padding()
    }
}
