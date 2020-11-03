//
//  File.swift
//  ios_data_binding
//
//  Created by mac on 2020/11/1.
//

import Foundation

struct Role{
    let name:String
    let img_Boy:String
    let img_Girl:String
    let img_BG:String
    
    #if DEBUG
    static let demoRole = Role(name:"狂狼勇士",img_Boy: "狂狼勇士男",img_Girl: "狂狼勇士女",img_BG:"狂狼勇士背景")
    #endif
}
