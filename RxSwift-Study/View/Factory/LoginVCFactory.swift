//
//  LoginVCFactory.swift
//  RxSwift-Study
//
//  Created by Raphael Martin on 11/22/22.
//

import UIKit

class LoginVCFactory: ViewControllerFactoring {
    public static func make() -> LoginViewController {
        let apiUrl = Environment.apiUrl
        let todoApiClient = TodoAPIClient(baseURL: apiUrl)
        let userService = UserService(apiClient: todoApiClient)
        
        return LoginViewController(userService: userService)
    }
}
