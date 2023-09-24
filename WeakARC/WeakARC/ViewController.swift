//
//  ViewController.swift
//  WeakARC
//
//  Created by Ganesh on 11/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    var arcClass:ARCClass? = ARCClass()

    
    // View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBActions
    
    /// release ARC_A
    @IBAction func set_ARC_A_To_Nil(sender:UIButton){
        arcClass?.classA = nil
    }
    
    /// release ARC_B
    @IBAction func set_ARC_B_To_Nil(sender:UIButton){
        arcClass?.classB = nil
    }
    
    /// release ARC
    @IBAction func set_ARC_To_Nil(sender:UIButton){
        arcClass = nil
    }
    
    /// regerate ARC
    @IBAction func renerate_ARC(sender:UIButton){
        arcClass = ARCClass()
    }
    
    /// check all Data in ARC
    @IBAction func checkAllDataInARC(sender:UIButton){
        print("(1)arcClass:\(arcClass)")
        print("(2)arcClass.classA:\(arcClass?.classA)")
        print("(3)arcClass.classB:\(arcClass?.classB)")
        print("(4)arcClass.classA.classB:\(arcClass?.classA?.classB)")
        print("(5)arcClass.classB.classA:\(arcClass?.classB?.classA)")
    }
}

