//
//  TFViewModel.swift
//  SWIFTUI_CleanArchitecture
//
//  Created by 이윤수 on 2023/05/14.
//

import Foundation

import Combine

class TFViewModel : ObservableObject{
    var bag = Set<AnyCancellable>()
    
    let useCase : TextInputUseCase
    
    @Published var doneTapValue : String = ""
    var insertText : String = ""
    
    let doneTap = PassthroughSubject<Void, Never>()
    
    init(useCase: TextInputUseCase) {
        self.useCase = useCase
        doneTapToTFValueChange()
    }
    
    func doneTapToTFValueChange(){
        self.doneTap
            .sink{ [weak self] in
                print("눌림")
                let useCaseValue = self?.useCase.uppercasedTextValue(before: self?.insertText ?? "") ?? .init(tfValue: "", time: Date())
                self?.doneTapValue = "\(useCaseValue.tfValue) VALUE\n\(useCaseValue.time) TIME"
                print(useCaseValue)
            }
            .store(in: &bag)
    }
}
