//
//  Base62.swift
//  Base62
//
//  Created by Sam Soffes on 5/20/16.
//  Copyright © 2016 Sam Soffes. All rights reserved.
//

import Darwin

private let alphabet = [
	"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
	"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
	"N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
	"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
	"n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
]

private let base = UInt(alphabet.count)

public func encode(integer integer: UInt) -> String {
	if integer < base {
		return alphabet[Int(integer)]
	}
	return encode(integer: integer / base) + alphabet[Int(integer % base)]
}

public func decode(string string: String) -> UInt {
	var output: UInt = 0

	for (i, character) in string.characters.reverse().enumerate() {
		guard let index = alphabet.indexOf(String(character)) else { continue }
		let place = UInt(pow(Double(base), Double(i)))
		output += UInt(index) * place
	}

	return output
}
