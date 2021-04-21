//
//  ViewController.swift
//  CameraPluginTest
//
//  Created by Rohit Kumar on 20/03/21.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showFlutterViewController(_ sender: Any) {
        let flutterEngine           = FlutterEngine.init(name: "Camera")
        flutterEngine.run(withEntrypoint: "cameraEntryPoint")
        GeneratedPluginRegistrant.register(with: flutterEngine);
        let cameraViewController = FlutterViewController.init(engine: flutterEngine, nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(cameraViewController, animated: true)
    }
    
}

