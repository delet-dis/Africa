//
//  CenterModifier.swift
//  Africa
//
//  Created by Igor Efimov on 12.11.2021.
//

import SwiftUI

struct CenterModifier:ViewModifier {
    func body(content:Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
