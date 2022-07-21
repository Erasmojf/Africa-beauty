//
//  CardTransition.swift
//  Africa Beauty
//
//  Created by Erasmo J.F Da Silva on 21/07/22.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

extension AnyTransition {
    static var trailingBottom: AnyTransition {
        AnyTransition.asymmetric(insertion: .identity,
                                 removal: AnyTransition.move(edge: .trailing).combined(with: .move(edge: .bottom)))
    }
    
    static var leadingBottom: AnyTransition {
        AnyTransition.asymmetric(insertion: .identity,
            removal: AnyTransition.move(edge: .leading)
            .combined(with: .move(edge: .bottom)))
    }
}
