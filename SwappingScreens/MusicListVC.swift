//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Aleksandar Yanev on 11/10/16.
//  Copyright © 2016 AleksandarYanev. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.orange

        // Do any additional setup after loading the view.
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        
        let songTitle = "Quit Playing Games With My Heart"
        
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            PlaySongVC  {
            
            if let song = sender as? String {
                
                destination.selectedSong = song
            }
            
        }
    }
    
}
