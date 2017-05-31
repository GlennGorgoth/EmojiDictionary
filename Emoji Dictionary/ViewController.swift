//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Brandon Arnold on 5/30/17.
//  Copyright © 2017 Brandon Arnold. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainTableView: UITableView!
    
    
    var emojis = ["😀","😈","😖","🐹","🐼","🎎","⛄️"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        mainTableView.dataSource = self
        mainTableView.delegate = self
    
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegueWithIdentifier("moveSequway", sender: emoji)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let defVC = segue.destinationViewController as!
            DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

