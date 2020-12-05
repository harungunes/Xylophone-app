//
//  AButton.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class AButton {
  let buttonA: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("A", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .blue
    
    return button
  }()
  
  func activateButtonA() {
    buttonA.addTarget(self, action: #selector(playA), for: .touchUpInside)
  }
  
  @objc func playA() {
    print("TEST A")
  }
  
  func setButtonA() {
    
    activateButtonA()
    viewA.addSubview(buttonA)
    
    NSLayoutConstraint.activate([
      
      buttonA.centerXAnchor.constraint(equalTo: viewA.centerXAnchor),
      buttonA.centerYAnchor.constraint(equalTo: viewA.centerYAnchor),
      buttonA.widthAnchor.constraint(equalTo: viewA.widthAnchor, multiplier: 0.85),
      buttonA.heightAnchor.constraint(equalTo: viewA.heightAnchor, multiplier: 0.9)
    ])
  }
  
}
