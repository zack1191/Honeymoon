//
//  CardTransition.swift
//  Honeymoon
//
//  Created by Hein Htet Aung on 2024/06/26.
//

import SwiftUI

extension AnyTransition{
    static var trailingBottom:AnyTransition{
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .trailing).combined(with: .move(edge: .bottom)))
    }
    static var leadingBottom:AnyTransition{
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .leading).combined(with: .move(edge: .bottom)))
    }
}
