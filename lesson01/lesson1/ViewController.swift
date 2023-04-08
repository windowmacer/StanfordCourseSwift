//
//  ViewController.swift
//  lesson1
//
//  Created by Кирилл Арефьев on 04.04.2023.
//

import UIKit

class ViewController: UIViewController {
	var touches = 0 {
		didSet{
			touchLabel.text = "Touches: \(touches)"
		}
	}
	let emojiCollection = ["🐫", "🦌", "🐫", "🦌"]
	func flipButton(emoji: String, button: UIButton) {
		if button.currentTitle == emoji {
			button.setTitle("", for: .normal)
			button.backgroundColor = #colorLiteral(red: 0, green: 0.565054059, blue: 0.3169590831, alpha: 1)
		} else {
			button.setTitle(emoji, for: .normal)
			button.backgroundColor = #colorLiteral(red: 0.246004194, green: 0.6704418063, blue: 0.4856888652, alpha: 1)
		}
	}
	
	@IBOutlet var buttonCollection: [UIButton]!
	@IBOutlet weak var touchLabel: UILabel!
	@IBAction func buttonAction(_ sender: UIButton) {
		touches += 1
		if let buttonIndex = buttonCollection.firstIndex(of: sender) {
			flipButton(emoji: emojiCollection[buttonIndex], button: sender)
		}
	}
}

