//
//  TFViewCoordinator.swift
//  SWIFTUI_CleanArchitecture
//
//  Created by 이윤수 on 2023/05/14.
//

import Foundation
import SwiftUI

class TFViewCoordinator : CoordinatorProtocol {
    var childCoordinators: [CoordinatorProtocol] = []
    
    func start() -> TFView{
        TFView(viewModel: TFViewModel(useCase: TextInputUseCase(repositorty: TextUpRepositorty())))
    }
}
