//
//  TextUpRepositorty.swift
//  SWIFTUI_CleanArchitecture
//
//  Created by 이윤수 on 2023/05/14.
//

import Foundation

class TextUpRepositorty : TextUpRepositortyProtocol{
    func textUppercased(data: String) -> TFValue {
        TFValue(tfValue: data.uppercased(), time: Date())
    }
}
