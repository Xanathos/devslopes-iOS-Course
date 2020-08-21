//
//  ViewController.swift
//  XYZ-Machine
//
//  Created by Christian Torrico on 8/19/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager : CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
    }
    
    func updateLabels(data : CMAccelerometerData?, error: Error?){
        if let accelData = data {
            
            let formatter = NumberFormatter()
            formatter.minimumFractionDigits = 1
            formatter.maximumFractionDigits = 1
            
            
            let x = formatter.string(from: NSNumber(value: accelData.acceleration.x))!
            let y = formatter.string(from: NSNumber(value: accelData.acceleration.y))!
            let z = formatter.string(from: NSNumber(value: accelData.acceleration.z))!
            
            xLabel.text = "X: \(x)"
            yLabel.text = "Y: \(y)"
            zLabel.text = "Z: \(z)"
        }
    }


}

