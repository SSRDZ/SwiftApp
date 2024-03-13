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
    
    init(newName:String,mail:String,pass:String)
    {
        email = mail
        name = newName
        password = pass
        
        print("Name: ",name," mail: ",email," password :",password)
    }
}
