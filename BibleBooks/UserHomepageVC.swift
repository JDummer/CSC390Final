//
//  UserHomepageVC.swift
//  BibleBooks
//
//  Created by Jonathan Dummer on 12/14/15.
//  Copyright © 2015 cuw. All rights reserved.
//

import UIKit
import Parse

class UserHomepageVC: UIViewController
    //, WCSessionDelegate, UITableViewDataSource, UITableViewDelegate
{
    let bibleBooks = ["Genesis","Exodus","Leviticus","Numbers","Deuteronomy","Joshua","Judges","Ruth","1 Samuel","2 Samuel","1 Kings","2 Kings","1 Chronicles","2 Chronicles","Ezra","Nehemiah","Esther","Job","Psalms","Proverbs","Ecclesiastes","Song of Solomon","Isaiah","Jeremiah","Lamentations","Ezekiel","Daniel","Hosea","Joel","Amos","Obadiah","Jonah","Micah","Nahum","Habakkuk","Zephaniah","Haggai","Zechariah","Malachi","Matthew","Mark","Luke","John","Acts","Romans","1 Corinthians","2 Corinthians","Galatians","Ephesians","Philippians","Colossians","1 Thessalonians","2 Thessalonians","1 Timothy","2 Timothy","Titus","Philemon","Hebrews","James","1 Peter","2 Peter","1 John","2 John","3 John","Jude","Revelation"]
    @IBOutlet weak var theTableView: UITableView!
//    var session : WCSession!

/*    func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
    {
        let theMessage = message["aRoll"]!
        let parts = theMessage.componentsSeparatedByString(" -> ")
        
        let info = PFObject(className:"Books")
        info["owner_id"] = PhoneCore.currentUser
        info["numberOfGuesses"] = Int(parts[1])
        info["wrongGuesses"] = parts[0]
        info.saveInBackgroundWithBlock
            {
                (success: Bool, error: NSError?) -> Void in
                if (success)
                {
                    // The object has been saved.
                }
                else
                {
                    // There was a problem, check error.description
                }
        }

    }
*/

    override func viewDidLoad()
    {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bibleBooks.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! customCell
        
        // Configure the cell...
        cell.bookLabel.text = bibleBooks[indexPath.row]
        return cell
    }


    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
