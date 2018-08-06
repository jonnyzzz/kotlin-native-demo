//
//  main.swift
//  kotlin-fx-demo2
//
//  Created by Evgeny Petrenko on 06.08.18.
//  Copyright © 2018 Evgeny Petrenko. All rights reserved.
//

import Foundation
import Demo

let field = DemoDemoObject().field

let clazz = DemoDemoClazz()
clazz.memberFunction(p: 42)

Demo.forIntegers(b: 1, s: 2, i: 3, l: 4)

let ret = Demo.strings(str: "That is string")
print("Hello, World!" + field)

