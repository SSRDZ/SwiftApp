//
//  ProfileManager.swift
//  ReservationApp
//
//  Created by admin on 3/12/24.
//

import Foundation

public class AccountManager
{
    public var account: [Profile] = []
    
    init()
    {
        print("StartAccountManager")
        isNew = false
        correct = false
        CreateNewAccount(name: "Sard", email: "sard", password: "1234")
    }
    
    private var isNew:Bool
    func CheckAccount(name:String,email:String) -> Bool //check if new Account
    {
        isNew = false
        for index in 0..<account.count
        {
            if account[index].name != name && account[index].email != email
            {
                isNew = true
                break
            }
            else
            {
                isNew = false
            }
        }
        return isNew
    }
    
    private var correct:Bool
    func CreateNewAccount(name:String,email:String,password:String)
    {
        let newAccount = Profile(newName:name,mail:email,pass:password)
        account.append(newAccount)
    }
    
    func TryLogin(name:String,email:String,password:String) -> Bool //check if can LogIn
    {
        correct = false
        for index in 0..<account.count
        {
            if account[index].name == name && account[index].password == password || account[index].email == email && account[index].password == password
            {
                correct = true
                break
            }
            else
            {
                correct = false
            }
        }
        return correct
    }
}
