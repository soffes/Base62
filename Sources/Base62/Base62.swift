//
//  Base62.swift
//  Base62
//
//  Created by Sam Soffes on 5/20/16.
//  Copyright © 2016 Sam Soffes. All rights reserved.
//

import Darwin

let base62Alphabet = [
	"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
	"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
	"N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
	"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
	"n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
]


// MARK: - Encoding

public func encode(integer integer: UInt64) -> String {
	return encode(integer: integer, alphabet: base62Alphabet)
}

func encode(integer integer: UInt64, alphabet: [String]) -> String {
	let base = UInt64(alphabet.count)

	if integer < base {
		return alphabet[Int(integer)]
	}
	return encode(integer: integer / base, alphabet: alphabet) + alphabet[Int(integer % base)]
}


// MARK: - Decoding

public func decode(string string: String) -> UInt64 {
	return decode(string: string, alphabet: base62Alphabet)
}

func decode(string string: String, alphabet: [String]) -> UInt64 {
	let base = Double(alphabet.count)
	var output: UInt64 = 0

	for (i, character) in string.characters.reverse().enumerate() {
		guard let index = alphabet.indexOf(String(character)) else { continue }
		let place = UInt64(pow(base, Double(i)))
		output += UInt64(index) * place
	}

	return output
}
