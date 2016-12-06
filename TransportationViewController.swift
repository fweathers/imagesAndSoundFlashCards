//
//  TransportationViewController.swift
//  ImageAndSoundCards
//
//  Created by Felicia Weathers on 12/6/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit
import AVFoundation

class TransportationViewController: UIViewController {
    
    var player = AVAudioPlayer()

    @IBAction func imageButtonTapped(_ sender: UIButton) {
        
        player.play()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let audioPath = Bundle.main.path(forResource: "trainSound", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        } catch {
            
            //process any errors
            
        }    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
