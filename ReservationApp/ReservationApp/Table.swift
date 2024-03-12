//
//  Table.swift
//  ReservationApp
//
//  Created by admin on 3/11/24.
//

import Foundation

public class Table
{
    public var reserveTime:Float
    public var countTime:Float
    public var isReserve:Bool
    private var timer: Timer?
    
    init() 
    {
        isReserve = false
        countTime = 0
        reserveTime = 10
        
        print("Created Table")
        //array example --> var num : [int] = [initialize data or null]
        StartTimer()
    }
    
    public func Reserve()
    {
        StartTimer()
    }
    
    public func UnReserve()
    {
        
    }
    
    public func StartTimer()
    {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) 
        {
            timer in
            if self.countTime < self.reserveTime
            {
                self.countTime += 1
                print(self.countTime)
            }
            else
            {
                self.StopTimer()
                self.countTime = 0
            }
        }
    }
    
    private func StopTimer()
    {
        timer = nil
        print("StopedTimer")
    }
    
}
