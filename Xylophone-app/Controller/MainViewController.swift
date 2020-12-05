//
//  MainViewController.swift
//  Xylophone-app
//
//  Created by Harun Gunes on 05/12/2020.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

class MainViewController: UIViewController {
  
  let cButton = CButton()
  let dButton = DButton()
  let eButton = EButton()
  let fButton = FButton()
  let gButton = GButton()
  let aButton = AButton()
  let bButton = BButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setViewConstraints(for: view)
    createStackView()
    setButtons()
  }
  
  private func setButtons() {
    cButton.setButtonC()
    dButton.setButtonD()
    eButton.setButtonE()
    fButton.setButtonF()
    gButton.setButtonG()
    aButton.setButtonA()
    bButton.setButtonB()
  }
  
  func playSound(note: String) {
    guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else { return }
    
    do {
      try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
      try AVAudioSession.sharedInstance().setActive(true)
      
      /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
      player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
      
      /* iOS 10 and earlier require the following line:
       player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
      
      guard let player = player else { return }
      
      player.play()
      
    } catch let error {
      print(error.localizedDescription)
    }
  }
  
}
