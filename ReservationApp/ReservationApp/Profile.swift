//
//  Profile.swift
//  ReservationApp
//
//  Created by admin on 3/11/24.
//

import Foundation

public class Profile
{
    public var email:String
    public var name:String
    public var password:String
    
    init()
    {
        email = ""
        name = ""
        password = ""
    }
    
    public func SignUp(mail:String,newName:String,pass:String)
    {
        if mail != "" && name != "" && pass != ""
        {
            email = mail
            name = newName
            password = pass
        }
        else
        {
            return
        }
    }
    
    public func CheckPassword(mail:String,newName:String,pass:String) -> Bool
    {
        if email == mail && password == pass || name == newName && password == pass
        {
            return true
        }
        else
        {
            return false
        }
    }
}
