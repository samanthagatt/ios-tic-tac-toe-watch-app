//
//  InterfaceController.swift
//  TicTacToeWatch Extension
//
//  Created by Samantha Gatt on 10/24/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    // MARK: - Private Properties
    
    private var game = Game()
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var statusLabel: WKInterfaceLabel!
    
    @IBOutlet weak var button0: WKInterfaceButton!
    @IBOutlet weak var button1: WKInterfaceButton!
    @IBOutlet weak var button2: WKInterfaceButton!
    @IBOutlet weak var button3: WKInterfaceButton!
    @IBOutlet weak var button4: WKInterfaceButton!
    @IBOutlet weak var button5: WKInterfaceButton!
    @IBOutlet weak var button6: WKInterfaceButton!
    @IBOutlet weak var button7: WKInterfaceButton!
    @IBOutlet weak var button8: WKInterfaceButton!
    
    
    
    // MARK: - Private Functions
    
    private func makeMark(at coordinate: (Int, Int)) {
        do {
            try game.makeMark(at: coordinate)
        } catch {
            NSLog("Illegal move")
        }
        
        updateViews()
    }

    private func updateViews() {
        if let winner = game.winningPlayer?.stringValue {
            statusLabel.setText("Player \(winner) won!")
        } else if let player = game.activePlayer?.stringValue {
            statusLabel.setText("Player \(player)'s turn")
        } else if game.isOver {
            statusLabel.setText("Cat's game!")
        }
        
        button0.setTitle(game.board[(0, 0)]?.stringValue ?? "")
        button1.setTitle(game.board[(0, 1)]?.stringValue ?? "")
        button2.setTitle(game.board[(0, 2)]?.stringValue ?? "")
        button3.setTitle(game.board[(1, 0)]?.stringValue ?? "")
        button4.setTitle(game.board[(1, 1)]?.stringValue ?? "")
        button5.setTitle(game.board[(1, 2)]?.stringValue ?? "")
        button6.setTitle(game.board[(2, 0)]?.stringValue ?? "")
        button7.setTitle(game.board[(2, 1)]?.stringValue ?? "")
        button8.setTitle(game.board[(2, 2)]?.stringValue ?? "")
    }
    
    
    // MARK: - Actions
    
    @IBAction func resetBoard() {
        game.restart()
        updateViews()
    }
    
    @IBAction func placeMarkAt0() {
        makeMark(at: (0, 0))
    }
    @IBAction func placeMarkeAt1() {
        makeMark(at: (0, 1))
    }
    @IBAction func placeMarkAt2() {
        makeMark(at: (0, 2))
    }
    @IBAction func placeMarkAt3() {
        makeMark(at: (1, 0))
    }
    @IBAction func placeMarkAt4() {
        makeMark(at: (1, 1))
    }
    @IBAction func placeMarkAt5() {
        makeMark(at: (1, 2))
    }
    @IBAction func placeMarkAt6() {
        makeMark(at: (2, 0))
    }
    @IBAction func placeMarkAt7() {
        makeMark(at: (2, 1))
    }
    @IBAction func placeMarkAt8() {
        makeMark(at: (2, 2))
    }
}
