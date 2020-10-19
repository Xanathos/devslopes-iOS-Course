//
//  Constants.swift
//  Smack
//
//  Created by Christian Torrico on 9/24/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import Foundation
import Alamofire

typealias CompletionHandler = (_ Success : Bool) -> ()

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATEACCOUNT = "toCreateAccount"
let UNWIND_TOCHANNEL = "unwindToChannel"

//User defaults
let LOGGED_IN_KEY = "loggedIn"
let TOKEN = "token"
let USER_EMAIL = "userEmail"

//URL Constants
let BASE_URL = "https://chattychatchatxanathos.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"


//Headers
let HEADER : HTTPHeaders = [
    "Content-Type" : "application/json; charset=utf-8"
]
