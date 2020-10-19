//
//  AuthService.swift
//  Smack
//
//  Created by Christian Torrico on 10/4/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AuthService {
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard
    
    var isLoggedIn : Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set{
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken : String{
        get {
            return defaults.string(forKey: TOKEN) as! String
        }
        set {
            defaults.set(newValue, forKey: TOKEN)
        }
    }
    
    var userEmail : String{
        get {
            return defaults.string(forKey: USER_EMAIL) as! String
        }
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler){
        let loweredCaseEmail = email.lowercased()
                
        let body = [
            "email" : loweredCaseEmail,
            "password" : password
        ]
        
        
        AF.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (response) in
            
            if response.error == nil {
                completion(true)
            }
            else{
                completion(false)
                debugPrint(response.error as Any)
            }
        }
        
    }
    
    func loginUser(email: String, password: String, completion: @escaping CompletionHandler){
        let loweredCaseEmail = email.lowercased()
        
        let body = [
            "email" : loweredCaseEmail,
            "password" : password
        ]
        
        AF.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in
            
            if response.error == nil {
                guard let data = response.data else { return }
                do {
                    let json = try JSON(data: data)
                    
                    self.userEmail = json["user"].stringValue
                    self.authToken = json["token"].stringValue
                    self.isLoggedIn = true
                }
                catch{
                
                }

                
                completion(true)
            }
            else {
                completion(false)
            }
        }
    }
}
