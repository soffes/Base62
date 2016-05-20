//
//  Base62Tests.swift
//  Base62
//
//  Created by Sam Soffes on 5/20/16.
//
//

import XCTest
import Base62

class Base62Tests: XCTestCase {
	func testIntegerEncoding() {
		XCTAssertEqual("1z", encode(integer: 123))
		XCTAssertEqual("funky", encode(integer: 619367412))

		XCTAssertEqual("0", encode(integer: 0))
		XCTAssertEqual("1", encode(integer: 1))
		XCTAssertEqual("A", encode(integer: 10))
		XCTAssertEqual("1c", encode(integer: 100))
		XCTAssertEqual("Jr", encode(integer: 1231))
		XCTAssertEqual("12E", encode(integer: 3982))
		XCTAssertEqual("2qF", encode(integer: 10927))
		XCTAssertEqual("DFL", encode(integer: 50923))
		XCTAssertEqual("Q5c", encode(integer: 100292))
		XCTAssertEqual("qjr", encode(integer: 202731))
		XCTAssertEqual("2B5S", encode(integer: 519278))
		XCTAssertEqual("3mjb", encode(integer: 902323))
		XCTAssertEqual("4D8l", encode(integer: 1003827))
		XCTAssertEqual("8vwx", encode(integer: 2129387))
		XCTAssertEqual("3XbZr", encode(integer: 52338283))
		XCTAssertEqual("KBwPv", encode(integer: 298372887))
		XCTAssertEqual("8zTZmv", encode(integer: 8237468237))
		XCTAssertEqual("1AnE6bpNA", encode(integer: 256352386723872))
	}

	func testIntegerDecoding() {
		XCTAssertEqual(123, decode(string: "1z"))
		XCTAssertEqual(619367412, decode(string: "funky"))

		XCTAssertEqual(0, decode(string: "" ))
		XCTAssertEqual(0, decode(string: "0"))
		XCTAssertEqual(1, decode(string: "1"))
		XCTAssertEqual(10, decode(string: "A"))
		XCTAssertEqual(100, decode(string: "1c"))
		XCTAssertEqual(1231, decode(string: "Jr"))
		XCTAssertEqual(3982, decode(string: "12E"))
		XCTAssertEqual(10927, decode(string: "2qF"))
		XCTAssertEqual(50923, decode(string: "DFL"))
		XCTAssertEqual(100292, decode(string: "Q5c"))
		XCTAssertEqual(202731, decode(string: "qjr"))
		XCTAssertEqual(519278, decode(string: "2B5S"))
		XCTAssertEqual(902323, decode(string: "3mjb"))
		XCTAssertEqual(1003827, decode(string: "4D8l"))
		XCTAssertEqual(2129387, decode(string: "8vwx"))
		XCTAssertEqual(52338283, decode(string: "3XbZr"))
		XCTAssertEqual(298372887, decode(string: "KBwPv"))
		XCTAssertEqual(8237468237, decode(string: "8zTZmv"))
		XCTAssertEqual(256352386723872, decode(string: "1AnE6bpNA"))
	}
}
