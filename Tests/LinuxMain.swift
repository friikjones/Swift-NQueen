import XCTest

import NQueenTests

var tests = [XCTestCaseEntry]()
tests += NQueenTests.allTests()
XCTMain(tests)
