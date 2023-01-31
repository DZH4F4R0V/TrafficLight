//
//  ViewController.swift
//  TrafficLight
//
//  Created by J Eff on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var stackView: UIStackView!
    @IBOutlet var toggleButton: UIButton!
    @IBOutlet var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackView.isHidden.toggle()
        toggleButton.configuration = setupButton(with: "Turn on Traffic Light")
        redView.layer.cornerRadius = 0.5
    }

    @IBAction func toggleButtonDidTapped() {
        toggleButton.isHidden.toggle()
        toggleButton.configuration = setupButton(
            with: toggleButton.isHidden ?
            "Turn on Traffic Light" :
                "Change Light"
        )
    }
    
    
    private func setupButton(with title: String) ->
        UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.6711818576, green: 0.124547638, blue: 0.526468575, alpha: 1)
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        
        return buttonConfiguration
    }
    
    private func setupView(with title: String) ->
    UIView
    
}

