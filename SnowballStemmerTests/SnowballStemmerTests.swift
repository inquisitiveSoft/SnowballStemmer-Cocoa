//
//  SnowballStemmerTests.swift
//  SnowballStemmer
//
//  Created by Harry Jordan on 17/09/2014.
//  Copyright (c) 2014 InquisitiveSoftware. All rights reserved.
//

import UIKit
import XCTest
import SnowballStemmer


class SnowballStemmerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	
    func testBasicStemming() {
		let wordsAndStems = [
			("Generalization", "general")
		]
		
		for word in wordsAndStems {
			let stemWord = word.0.stemWord()
			
			XCTAssert(stemWord == word.1, "Creates expected stem word")
			println("\(word.0) => \(stemWord)");
		}
    }
	
	
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock() {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
