//
//  ViewController.swift
//  Speech Recognition App
//
//  Created by Nodirbek on 15/06/22.
//

import UIKit
import InstantSearchVoiceOverlay

class ViewController: UIViewController, VoiceOverlayDelegate {

    @IBOutlet var mybutton: UIButton!
    
    let voiceOverlay = VoiceOverlayController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mybutton.backgroundColor = .systemRed
        mybutton.tintColor = .white
    }
    
    @IBAction func didTapButton(){
        voiceOverlay.delegate = self
        voiceOverlay.settings.autoStart = false
        voiceOverlay.settings.autoStop = true
        voiceOverlay.settings.autoStopTimeout = 5
        voiceOverlay.start(on: self) { text, final, _ in
            if final {
                
            }
            else {
                
            }
        } errorHandler: { error in
            
        }

    }
    func recording(text: String?, final: Bool?, error: Error?) {
        
    }

}

