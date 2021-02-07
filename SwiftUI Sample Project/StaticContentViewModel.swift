//
//  StaticContentViewModel.swift
//  SwiftUI Sample Project
//
//  Created by Sorin Cioban on 1/8/21.
//

import SwiftUI

protocol StaticContentViewModel {
    var topContentViews: [AnyView] { get }
    var bottomContentViews: [AnyView] { get }
    var ctaContentViews: [AnyView] { get }
}
