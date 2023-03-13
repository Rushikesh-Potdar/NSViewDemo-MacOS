//
//  SecondViewController.swift
//  NSViewDemo
//
//  Created by Rushikesh Potdar on 12/03/23.
//

import Cocoa

class SecondViewController: NSViewController {

    @IBAction func backBtnPressed(_ sender: NSButton) {
        self.dismiss(self)
//        self.view.window?.close()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        print("viewDidLoad")
        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = NSColor.red.cgColor
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        print("viewDidAppear")
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        print("viewWillAppear")
    }
    
    override func viewWillLayout() {
        super.viewWillLayout()
        print("viewWillLayout")
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        print("viewWillDisappear")
    }
    
    override func viewDidLayout() {
        super.viewDidLayout()
        print("viewDidLayout")
    }
    
    override func viewDidDisappear() {
        super.viewDidDisappear()
        print("viewDidDisappear")
    }
    
}
