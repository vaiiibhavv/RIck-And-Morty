//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Vaibhav on 18/09/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
