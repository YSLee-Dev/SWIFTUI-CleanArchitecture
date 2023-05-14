//
//  CoordinatorProtocol.swift
//  SWIFTUI_CleanArchitecture
//
//  Created by 이윤수 on 2023/05/14.
//

import Foundation
import SwiftUI

protocol CoordinatorProtocol{
    var childCoordinators: [CoordinatorProtocol] {get}
    func start() -> TFView
}
