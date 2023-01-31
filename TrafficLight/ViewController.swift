//
//  ViewController.swift
//  TrafficLight
//
//  Created by J Eff on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggleButton: UIButton!
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toggleButton.configuration = setupButton(with: "START")
        
        redView.layer.cornerRadius = 85
        yellowView.layer.cornerRadius = 85
        greenView.layer.cornerRadius = 85

        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView .alpha = 0.3
    }

    @IBAction func toggleButtonDidTapped() {
        toggleButton.configuration = setupButton(
            with: toggleButton.isHidden ?
            "START" :
                "NEXT"
        )
        if redView.alpha != 1 {
            redView.alpha = 1
        } else if yellowView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }
    }
    
    
    private func setupButton(with title: String) ->
        UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
    
}

