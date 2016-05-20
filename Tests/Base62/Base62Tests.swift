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
	}

	func testIntegerDecoding() {
		XCTAssertEqual(123, decode(string: "1z"))
		XCTAssertEqual(619367412, decode(string: "funky"))
	}
}
