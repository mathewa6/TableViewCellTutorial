//
//  ViewController.swift
//  TableViewCellTest
//
//  Created by Adi Mathew on 5/14/16.
//  Copyright © 2016 BumBum & Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let data = ["Usidore", "Arnie", "Chuntttttt"]
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - UITableView Datasource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    //MARK: - UITableView Delegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "Cell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController
        let tit = sender as! UITableViewCell
        dvc.title = tit.textLabel?.text
    }
    
}

