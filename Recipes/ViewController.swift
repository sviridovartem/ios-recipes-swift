//
//  ViewController.swift
//  Recipes
//
//  Created by Admin on 04/03/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    var recipes = [Recipe]()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidAppear(animated: Bool) {
        fetchAndSetResult()
        tableView.reloadData()
    }
    func fetchAndSetResult(){
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchedRecuest = NSFetchRequest(entityName: "Recipe")
        
        do{
            let result = try context.executeFetchRequest(fetchedRecuest)
            self.recipes = result as! [Recipe]
        } catch let err as NSError{
            print(err.debugDescription)
        }
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell") as? RecipeCell {
            let recipe = recipes[indexPath.row]
            cell.configureCell(recipe)
            return cell
        } else {
            return RecipeCell()
        }
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    
}

