//
//  AlertViewable.swift
//  Nioxin
//
//  Created by Sergey on 09.06.17.
//  Copyright © 2017 grossum solutions. All rights reserved.
//

import UIKit

public protocol AlertViewable {
    
    func show(message: String, dismissAfter time: TimeInterval)
    
}

public extension AlertViewable where Self: UIViewController {
    
    func show(message: String, dismissAfter time: TimeInterval = 3) {
        let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + time, execute: {
            alert.dismiss(animated: true, completion: nil)
        })
    }
    
}
