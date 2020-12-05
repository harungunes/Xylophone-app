//
//  ScreenView.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

let screenView: UIImageView = {
  let view = UIImageView()
  view.translatesAutoresizingMaskIntoConstraints = false
  view.isUserInteractionEnabled = true
  view.backgroundColor = .white
  
  return view
}()

func setViewConstraints(for view: UIView) {
  view.addSubview(screenView)
  
  NSLayoutConstraint.activate([
    screenView.topAnchor.constraint(equalTo: view.topAnchor),
    screenView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
    screenView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
    screenView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
  ])
}
