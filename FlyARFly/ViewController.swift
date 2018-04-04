//
//  ViewController.swift
//  FlyARFly
//
//  Created by Aubre Body on 12/27/17.
//  Copyright © 2017 Aubre Body. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController{
   
    /////////////View Element varaibles ///////////////////////
    let ARveiw: ARSCNView = {
        let view = ARSCNView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let Ufobutton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 171/255, green: 56/255, blue: 52/255, alpha: 0.4)
        button.setTitle("UFO", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(addObject), for: .touchUpInside)
        button.addTarget(self, action: #selector(removeobject), for: .touchDownRepeat)
        return button
    }()
    
   
    let Tiebutton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 171/255, green: 56/255, blue: 52/255, alpha: 0.4)
        button.setTitle("Tie Fighter", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(addObject2), for: .touchUpInside)
        button.addTarget(self, action: #selector(removeobject2), for: .touchDownRepeat)
        return button
    }()
    
    
    
    let TieInsep_button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 171/255, green: 56/255, blue: 52/255, alpha: 0.4)
        button.setTitle("Tie Fighter", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(addObject3), for: .touchUpInside)
        button.addTarget(self, action: #selector(removeobject3), for: .touchDownRepeat)
        return button
    }()
   
  
    override func viewDidLoad() {
        super.viewDidLoad()
        //nav bar color
        navigationController?.navigationBar.barTintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.4)
        let scene = SCNScene()
        ARveiw.scene = scene
        
       
       view.addSubview(ARveiw)
       view.addSubview(Ufobutton)
        view.addSubview(Tiebutton)
        view.addSubview(TieInsep_button)
        ARView_setup()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let config  = ARWorldTrackingConfiguration()
        ARveiw.session.run(config)
       
    }
    
    
    
   
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
       
    }
    
    //////// Functions ///////////////////////////
    
    func ARView_setup () {
        ARveiw.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ARveiw.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        ARveiw.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        ARveiw.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        Ufobutton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        Ufobutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        Ufobutton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        Ufobutton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        Tiebutton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        Tiebutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        Tiebutton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        Tiebutton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        TieInsep_button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        TieInsep_button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        TieInsep_button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        TieInsep_button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
    }
    
    @objc func addObject3 () {
        let object = TieFighterTwo()
        object.LoadModel()
        
        //positation
        object.position = SCNVector3(0, 0, -1.5)
        ARveiw.scene.rootNode.addChildNode(object)
        
    }
    
    @objc func removeobject3() {
        let object = TieFighterTwo()
        object.LoadModel()
        object.removeFromParentNode()
    }
    
    @objc func addObject2() {
        let object = Tiefighter()
        object.LoadModel()
        
        //positation
        object.position = SCNVector3(0, 0, -1.5)
        ARveiw.scene.rootNode.addChildNode(object)
        
    }
    
    @objc func removeobject2() {
        let object = Tiefighter()
        object.LoadModel()
        object.removeFromParentNode()
    }
    
    @objc func addObject() {
        let object = Ships()
        object.LoadModel()
        
      
        
        //positation
        object.position = SCNVector3(0, 0, -1.5)
        ARveiw.scene.rootNode.addChildNode(object)
        
    }
    
    @objc func removeobject() {
        let object = Ships()
        object.LoadModel()
        object.removeFromParentNode()
    }
}
