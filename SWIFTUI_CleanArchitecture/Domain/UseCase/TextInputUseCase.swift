//
//  TextInputUseCase.swift
//  SWIFTUI_CleanArchitecture
//
//  Created by 이윤수 on 2023/05/14.
//

import Foundation

class TextInputUseCase : TextInputUseCaseProtocol{
    var repositorty: TextUpRepositortyProtocol
    
    init(repositorty: TextUpRepositortyProtocol) {
        self.repositorty = repositorty
    }
    
    func uppercasedTextValue(before: String) -> TFValue {
        self.repositorty.textUppercased(data: before)
    }
}
