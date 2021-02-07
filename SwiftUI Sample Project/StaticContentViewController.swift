//
//  StaticContentViewController.swift
//  SwiftUI Sample Project
//
//  Created by Sorin Cioban on 1/8/21.
//

import SwiftUI

class StaticContentViewController<ViewModel: StaticContentViewModel>: UIHostingController<StaticContentView> {
    let viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        let rootView = StaticContentView(
            topContentViews: viewModel.topContentViews,
            bottomContentViews: viewModel.bottomContentViews,
            ctaViews: viewModel.ctaContentViews
        )
        super.init(rootView: rootView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not supported")
    }
}
