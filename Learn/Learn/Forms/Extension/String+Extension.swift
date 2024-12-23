//
//  String+Extension.swift
//  Learn
//
//  Created by shashwat singh on 23/12/24.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailex)
        return predicate.evaluate(with: self)
    }
}
