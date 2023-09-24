//
//  ARCClass.swift
//  WeakARC
//
//  Created by Ganesh on 11/09/23.
//

import Foundation

class ARCClass: NSObject{
    
    // Properties
    var classA: ClassA? = ClassA()
    var classB: ClassB? = ClassB()
    
    override init() {
        super.init()
        classA!.classB = classB
        classB!.classA = classA
        print("ARCClass Initialized")
    }
    
    deinit {
        print("ARCClass Released")
    }
    
}

class ClassA{
    var classB: ClassB?
    
    init(){
        print("Class_A Initialized")
    }
    
    deinit {
        print("Class_A Released")
    }
}

class ClassB{
    
    // Weak should be Varible and Optional Type otherwise compiler will give following errors
    /// 'weak' must be a mutable variable, because it may change at runtime
    /// 'weak' variable should have optional type 'ClassA?'
    var classA: ClassA?
    public var value = "ClassB"
    
    init(){
        print("Class_B Initialized")
    }
    
    deinit {
        print("Class_B Released")
    }
}
