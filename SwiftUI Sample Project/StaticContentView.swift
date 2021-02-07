//
//  StaticContentView.swift
//  SwiftUI Sample Project
//
//  Created by Sorin Cioban on 1/8/21.
//

import SwiftUI

struct StaticContentView: View {
    let topContentViews: [AnyView]
    let bottomContentViews: [AnyView]
    let ctaViews: [AnyView]
    let padding: CGFloat = 16.0
    
    init(
        topContentViews: [AnyView],
        bottomContentViews: [AnyView],
        ctaViews: [AnyView]
    ) {
        self.topContentViews = topContentViews
        self.bottomContentViews = bottomContentViews
        self.ctaViews = ctaViews
    }
    
    var body: some View {
        GeometryReader { screenGeometry in
            VStack(alignment: .center, spacing: 0) {
                Spacer(minLength: padding)
                
                VStack(alignment: .center, spacing: padding) {
                    Text("Large title element")
                        .font(.largeTitle)
                    Text("Body element")
                        .font(.body)
                }.padding(.horizontal, padding)
                
                Spacer(minLength: padding)
                
                VStack(alignment: .center, spacing: padding) {
                    Rectangle()
                        .frame(width: screenGeometry.size.width * 0.7,
                               height: 48,
                               alignment: .center)
                }.alignmentGuide(.bottom, computeValue: { _ in 0 })
            }
            .frame(maxWidth: screenGeometry.size.width - 2 * padding,
                   minHeight: minHeight(screenGeometry: screenGeometry))
            .padding(.horizontal, padding)
            .fixedSize(horizontal: false, vertical: true)
        }
    }
    
    func minHeight(screenGeometry: GeometryProxy) -> CGFloat {
        screenGeometry.size.height - padding
    }
}
