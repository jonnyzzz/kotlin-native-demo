//
//  main.swift
//  kotlin-fx-demo2
//
//  Created by Evgeny Petrenko on 06.08.18.
//  Copyright © 2018 Evgeny Petrenko. All rights reserved.
//

import Foundation
import Demo


let kotlinObject = DemoObject()
assert(kotlinObject === DemoObject(), "Kotlin object has only one instance")

let field = DemoObject().field

let clazz = DemoClazz()
clazz.member(p: 42)

Demo.forIntegers(b: 1, s: 2, i: 3, l: 4)
Demo.forFloats(f: 2.71, d: nil)

let ret = Demo.acceptFun { "\($0) Kotlin is fun" }
if (ret != nil) {
  print(ret!)
}


