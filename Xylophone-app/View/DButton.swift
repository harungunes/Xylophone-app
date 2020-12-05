//
//  DButton.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class DButton {
  let buttonD: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("D", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = .orange
    
    return button
  }()
  
  func activateButtonD() {
    buttonD.addTarget(self, action: #selector(playD), for: .touchUpInside)
  }
  
  @objc func playD() {
    print("TEST D")
  }
  
  func setButtonD() {
    
    activateButtonD()
    viewD.addSubview(buttonD)
    
    NSLayoutConstraint.activate([
      
      buttonD.centerXAnchor.constraint(equalTo: viewD.centerXAnchor),
      buttonD.centerYAnchor.constraint(equalTo: viewD.centerYAnchor),
      buttonD.widthAnchor.constraint(equalTo: viewD.widthAnchor, multiplier: 0.97),
      buttonD.heightAnchor.constraint(equalTo: viewD.heightAnchor, multiplier: 0.9)
    ])
  }
  
}

