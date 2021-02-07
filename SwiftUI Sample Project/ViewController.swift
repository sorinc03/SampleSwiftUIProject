//
//  ViewController.swift
//  SwiftUI Sample Project
//
//  Created by Sorin Cioban on 1/8/21.
//

import SwiftUI

struct MyViewModel: StaticContentViewModel {
    var topContentViews: [AnyView] = []
    
    var bottomContentViews: [AnyView] = []
    
    var ctaContentViews: [AnyView] = []
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controller = StaticContentViewController(viewModel: MyViewModel())
        addChild(controller)
        controller.view.frame = view.bounds
        view.addSubview(controller.view)
        controller.didMove(toParent: self)
    }


}

