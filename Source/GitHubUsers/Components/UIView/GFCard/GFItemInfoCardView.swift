//
//  GFItemInfoCardView.swift
//  GitHubUsers
//
//  Created by HenestrosaConH on 26/7/22.
//

import UIKit

class GFItemInfoCardView: GFBaseCardView {

    // MARK: Internal Properties
    
    internal let stackView = UIStackView()
    internal let itemLeft: GFBaseItem
    internal let itemRight: GFBaseItem
    
    // MARK: - Initializers
    
    init(itemLeft: GFBaseItem, itemRight: GFBaseItem) {
        self.itemLeft = itemLeft
        self.itemRight = itemRight
        
        super.init()
        
        configureStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
     private func configureStackView() {
         addSubview(stackView)
         
         stackView.translatesAutoresizingMaskIntoConstraints = false
         
         stackView.axis = .horizontal
         stackView.distribution = .equalSpacing // like space-between in CSS
         
         stackView.addArrangedSubview(itemLeft)
         stackView.addArrangedSubview(itemRight)
         
         NSLayoutConstraint.activate([
             stackView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
             stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
             stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
             stackView.heightAnchor.constraint(equalToConstant: 50),
         ])
     }

}
