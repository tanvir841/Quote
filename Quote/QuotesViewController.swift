//
//  ViewController.swift
//  Quote
//
//  Created by Tanvir on 1/22/20.
//  Copyright © 2020 tanvir841. All rights reserved.
//

import UIKit

class QuotesViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var quotesList: [Quotes] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! CustomizedTableViewCell
        let item = quotesList[indexPath.row]
        Cell.quoteTxt.text = item.quotesText
        Cell.quoteAuth.text = item.quotesAuthor
        
        return Cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addQuotes()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }

    func addQuotes() {
        let item1 = Quotes()
               item1.quotesAuthor = "– R. Brault"
               item1.quotesText = "Life becomes easier when you learn to accept the apology you never got."
               quotesList.append(item1)
               let item2 = Quotes()
               item2.quotesAuthor = "― Albert Einstein"
               item2.quotesText = "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.”"
               quotesList.append(item2)
               let item3 = Quotes()
               item3.quotesAuthor = "― Bernard M. Baruch"
               item3.quotesText = "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind.”"
               quotesList.append(item3)
               let item4 = Quotes()
               item4.quotesAuthor = "– Dr. Seuss"
               item4.quotesText = "You know you're in love when you can't fall asleep because reality is finally better than your dreams.”"
               quotesList.append(item4)
               let item5 = Quotes()
               item5.quotesAuthor = "– Robert Frost"
               item5.quotesText = "In three words I can sum up everything I've learned about life: it goes on.”"
               quotesList.append(item5)
               let item6 = Quotes()
               item6.quotesAuthor = "– Oscar Wilde, The Happy Prince and Other Stories"
               item6.quotesText = "I am so clever that sometimes I don't understand a single word of what I am saying.”"
               quotesList.append(item6)
               let item7 = Quotes()
               item7.quotesAuthor = "– Ralph Waldo Emerson"
               item7.quotesText = "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.”"
               quotesList.append(item7)
               let item8 = Quotes()
               item8.quotesAuthor = "– Mark Twain"
               item8.quotesText = "If you tell the truth, you don't have to remember anything.”"
               quotesList.append(item8)
    
            }
    
}

