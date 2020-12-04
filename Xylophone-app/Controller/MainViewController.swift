//
//  MainViewController.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit

class MainViewController: UIViewController {
  
  let notesStack = NotesStackView().createStackView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    addNotesStack()
  }
  
  func addNotesStack() {
    view.addSubview(notesStack)
    
    NSLayoutConstraint.activate([
      notesStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      notesStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      notesStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      notesStack.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
}

