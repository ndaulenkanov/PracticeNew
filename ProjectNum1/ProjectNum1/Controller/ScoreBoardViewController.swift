//
//  ScoreBoardViewController.swift
//  ProjectNum1
//
//  Created by Нұржан Дауленканов on 6/8/19.
//  Copyright © 2019 Нұржан Дауленканов. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var playerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTableView.delegate = self
        playerTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreBoardCell", for: indexPath) as! ScoreBoardTableViewCell
        cell.setScoreBoardCell(username: "Saule", score: "10")
        return cell
    }
    

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
