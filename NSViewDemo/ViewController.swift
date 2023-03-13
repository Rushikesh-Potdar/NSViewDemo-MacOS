//
//  ViewController.swift
//  NSViewDemo
//
//  Created by Rushikesh Potdar on 09/03/23.
//

import Cocoa

class ViewController: NSViewController {
    
    let windowController = NSWindowController()
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(origin: CGPoint(x: self.view.bounds.maxY, y: 0), size: CGSize(width: 100, height: 100))
        let view = NSView(frame: frame)
        
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.black.cgColor
        self.view.addSubview(view)
        //print("object of NSApp \(NSApp)")
        // Do any additional setup after loading the view.
        
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func goToSecondVC(_ sender: NSButton) {
        let vc = storyboard?.instantiateController(withIdentifier: "SecondViewController")  as! SecondViewController
        vc.view.frame = self.view.frame
        //view.window?.contentViewController = vc
        self.presentAsModalWindow(vc)
        //createWindow()
    }
    
    func createWindow() {
        
        let newWindow = NSWindow(contentRect: .init(origin: .zero, size: .init(width: 300, height: 300)),
                                 styleMask: NSWindow.StyleMask(rawValue: 0xf),
                                 backing: .buffered,
                                 defer: false)
        newWindow.isReleasedWhenClosed = false
        newWindow.title = "New Window"
        newWindow.isOpaque = false
        newWindow.isMovableByWindowBackground = true

        newWindow.backgroundColor = NSColor(calibratedHue: 0, saturation: 1.0, brightness: 0, alpha: 0.7)
        newWindow.makeKeyAndOrderFront(nil)

//        windows.insert(newWindow)
        self.windowController.window = newWindow
    }
}


