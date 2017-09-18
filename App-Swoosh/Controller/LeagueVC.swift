//
//  LeagueVC.swift
//  App-Swoosh
//
//  Created by Marcel Fokker on 14-09-17.
//  Copyright © 2017 Marcel Fokker. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player! //Model
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

           player = Player()
        
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
      selectedLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
      selectedLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectedLeague(leagueType: "coed")
    }
    
    func selectedLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
