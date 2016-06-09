//
//  Universe.swift
//  SingletonInSwift
//
//  Created by dr2050 on 6/9/16.
//  Copyright © 2016 Confusion Studios LLC. All rights reserved.
//
import UIKit

// MARK: - convenience access
let universe = Universe.sharedInstance

@objc(Universe)
class Universe : Singleton {
	
	static let sharedInstance = Universe()
	
	override class func instance() -> Singleton {
		return sharedInstance
	}
	
	private override init() {}
	
	@IBOutlet var vc1 : ViewController? {
		didSet {
			if (vc1 == nil) {
				print("um, somebody set nil")
			}
		}
	}
	@IBOutlet var vc2 : SecondViewController?
	
	func whatIsUp() {
		print("Hello, I am \(self) and vc1 is \(vc1) and vc2 is \(vc2)")
	
	}
}