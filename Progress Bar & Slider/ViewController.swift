//
//  ViewController.swift
//  Progress Bar & Slider
//
//  Created by Choudhary Dipika on 19/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        sliderLabel.text = "0"
    }

    @IBAction func savetButton(_ sender: UIButton) {
        
        var time = Timer()
        var a : Float = 0.0
       
        time = Timer.scheduledTimer(withTimeInterval: 0.05,repeats: true, block: { time in
            
            a+=0.01
            self.progressBar.progress = a
            if self.progressBar.progress == 1.0
            {
                self.progressBar.progress = 0.0
            }
        })
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        sliderLabel.text = Int(slider.value).description
    }
}

