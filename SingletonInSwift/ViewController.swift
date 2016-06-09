//
//  ViewController.swift
//  SingletonInSwift
//
//  Created by dr2050 on 6/9/16.
//  Copyright © 2016 Confusion Studios LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func goToNextVC(sender: AnyObject) {
		let nextVC = SecondViewController(nibName: "SecondViewController", bundle: nil)
		nextVC.view.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
		self.view.addSubview(nextVC.view)
	}

	@IBAction func printStatus(sender: AnyObject) {
		universe.whatIsUp()
	}
	
}

