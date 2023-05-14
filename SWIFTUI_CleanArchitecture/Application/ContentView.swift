//
//  ContentView.swift
//  SWIFTUI_CleanArchitecture
//
//  Created by 이윤수 on 2023/05/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TFViewCoordinator().start()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
