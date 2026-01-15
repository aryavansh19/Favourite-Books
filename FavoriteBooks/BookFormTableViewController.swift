//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Aryavansh on 08/01/26.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    var book: Book?
    
    @IBOutlet weak var titleField: UITextField!
    
    @IBOutlet weak var authorField: UITextField!
    
    @IBOutlet weak var genreField: UITextField!
    
    @IBOutlet weak var lengthField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let title = titleField.text,
            let author = authorField.text,
            let genre = genreField.text,
            let length = lengthField.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: "UnwindToBookTable", sender: self )
    }

    init?(coder: NSCoder, book: Book?) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //updateView()
    }
    
    func updateView() {
        guard let book = book else {return}
        
        titleField.text = book.title
        authorField.text = book.author
        genreField.text = book.genre
        lengthField.text = book.length
    }
    
}
