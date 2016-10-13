//
//  library.swift
//  Library
//
//  Created by Chad Trador on 10/12/16.
//  Copyright © 2016 Eleven Fifty Consulting. All rights reserved.
//

import Foundation
private var io = Io()
private var currentInput: String = "q"

//private var interactive = Interactive()

class Library{
    var books: [String] = [String]()

        
    func addNewBook()  {
        io.writeMessage("what is the books name")
        currentInput = io.getInput()
        let newBook = currentInput
    print("New Book is:\(newBook) ")
    
        books.append(newBook)
        
        interactive.go()
    }

    func checkoutBook()  {
        io.writeMessage("what is Name of book")
        currentInput = io.getInput()
        let checkOutBook = currentInput
        print("Book Checked Out is:\(checkOutBook) ")
        
        interactive.go()
    }
    
    func checkINBook()  {
        io.writeMessage("what is Name of book")
        currentInput = io.getInput()
        let checkInBook = currentInput
        print("Book Checked In is:\(checkInBook) ")
        
           interactive.go()
    }

    func LookUpBook()  {
        io.writeMessage("what is Name of book")
        currentInput = io.getInput()
        let lookUpBook = currentInput
        print("We have:\(lookUpBook) ")
        
        books[0...2].contains(lookUpBook)
        
        //print("\n \(books)")
           interactive.go()
    }

    func help() {
        io.writeMessage("look up books type: look up\n check out book: check out\ncheckin book: check in\n add new book: add new\nlookup book: lookup\n help: help\nquit: quit")
        
        interactive.go()
    }
    
    
}
