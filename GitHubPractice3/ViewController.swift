//
//  ViewController.swift
//  GitHubPractice3
//
//  Created by Alex Masztak on 11/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    var blankStringArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
        
    
    }
    
    @IBAction func whenButtonPressed(_sender: UIBarButtonItem){
        let alert = UIAlertController(title: "Alert", message: "Pull item from TextField?", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {_ in
            textFieldHandler()
        }))
        self.present(alert, animated: true, completion: nil)
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = blankStringArray[indexPath.row]
        
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blankStringArray.count
    }
}

