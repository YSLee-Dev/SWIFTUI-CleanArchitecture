//
//  TextInputUseCaseProtocol.swift
//  SWIFTUI_CleanArchitecture
//
//  Created by 이윤수 on 2023/05/14.
//

import Foundation

protocol TextInputUseCaseProtocol{
    var repositorty : TextUpRepositortyProtocol {get}
    func uppercasedTextValue(before : String) -> TFValue
}
