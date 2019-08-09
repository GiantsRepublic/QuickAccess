//
//  ColorViewController.swift
//  QuickAccess
//
//  Created by Jason Wei on 7/31/19.
//  Copyright © 2019 GiantsRepublic. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    var colorArray = [CustomColor]()
    //var appData = AppData.data
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var test_data = [["color_name": "test", "rgb": [15, 15, 15], "index": 0], ["color_name": "test2", "rgb": [20, 20, 20], "index": 1]]
        
        saveFile(fileName: "Saved Color", data: test_data)
    }
    
    func saveFile(fileName: String, data: [[String: Any]]) {
        print (fileName)
            let file: FileHandle? = FileHandle(forWritingAtPath: "\(fileName).json")

            if file != nil {
                // Set the data we want to write
                do{
                    if let jsonData = try JSONSerialization.data(withJSONObject: data, options: .init(rawValue: 0)) as? Data
                    {
                        // Check if everything went well
                        print(NSString(data: jsonData, encoding: 1)!)
                        file?.write(jsonData)

                        // Do something cool with the new JSON data
                    }
                }
                catch {
                    print("something went wrong")
                }
                // Write it to the file

                // Close the file
                file?.closeFile()
            }
            else {
                print("Ooops! Something went wrong!")
            }
        }
}

extension ColorViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = ""
        return cell
    }
    
    
}
