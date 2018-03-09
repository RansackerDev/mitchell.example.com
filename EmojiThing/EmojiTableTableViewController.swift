//
//  EmojiTableTableViewController.swift
//  EmojiThing
//
//  Created by Mitchell R. Berg on 2/22/18.
//  Copyright © 2018 Mitchell R. Berg. All rights reserved.
//

import UIKit

class EmojiTableTableViewController: UITableViewController {
    
    @IBOutlet weak var button: UIBarButtonItem!
    var sectionTitles: [String] = ["Breakfast", "Lunch", "Dinner"]
    
    var emojiArray2D: [[Emoji]] = [
        [Emoji(symbol: "👤", name: "person", description: "Person duh..", usage: "happiness"),
        Emoji(symbol: "Orange Juice", name: "", description: "Wouldnt be breakfast without it.", usage: "happiness"),
        Emoji(symbol: "Sausage", name: "", description: "Just because", usage: "happiness")],
        [Emoji(symbol: "PBJ", name: "", description: "A typical sandwich", usage: "happiness"),
         Emoji(symbol: "Bannana", name: "", description: "A healthy choice", usage: "happiness"),
         Emoji(symbol: "Cookie", name: "", description: "A good ending", usage: "happiness")],
        [Emoji(symbol: "Chicken", name: "", description: "Protein!", usage: "happiness"),
         Emoji(symbol: "Coke", name: "", description: "A unhealthy choice", usage: "happiness"),
         Emoji(symbol: "Salad", name: "", description: "to make up for the coke.", usage: "happiness")]
    
]
    
    
    
    var emojis = [Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face", usage: "happiness"),Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face", usage: "happiness")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem
        
        
        
    }

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return emojiArray2D.count
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return emojiArray2D[section].count
    }
   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
        
        let emoji = emojiArray2D[indexPath.section] [indexPath.row]

        // Configure the cell...
       
        
        //cell.textLabel?.text = "\(emoji.symbol) \(emoji.name)"
        //cell.detailTextLabel?.text = emojis.description
        cell.showsReorderControl = true
        cell.update(with: emoji)
        return cell
       
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
   // let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: IndexPath)
   // let emoji = emojis [IndexPath.row]
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
  //  override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    //    if editingStyle == .delete {
            // Delete the row from the data source
      //      tableView.deleteRows(at: [indexPath], with: .fade)
       // } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
      //  }
    //}
    
   // @IBAction func editButtonTap(_ sender: UIBarButtonItem) {
        
     //   let tableViewEdditingMode = tableView.isEditing
        
       // tableView.setEditing(!tableViewEdditingMode, animated: true)
        
    //}
    
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
 }
