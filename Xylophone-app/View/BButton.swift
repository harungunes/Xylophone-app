//
//  BButton.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class BButton {
  let buttonB: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("B", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .magenta
    
    return button
  }()
  
  func activateButtonB() {
    buttonB.addTarget(self, action: #selector(playB), for: .touchUpInside)
  }
  
  @objc func playB() {
    mainViewController.playSound(note: "B")
  }

  func setButtonB() {
    
    activateButtonB()
    viewB.addSubview(buttonB)
    
    NSLayoutConstraint.activate([
      
      buttonB.centerXAnchor.constraint(equalTo: viewB.centerXAnchor),
      buttonB.centerYAnchor.constraint(equalTo: viewB.centerYAnchor),
      buttonB.widthAnchor.constraint(equalTo: viewB.widthAnchor, multiplier: 0.82),
      buttonB.heightAnchor.constraint(equalTo: viewB.heightAnchor, multiplier: 0.9)
    ])
  }
  
}
