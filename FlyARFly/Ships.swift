//
//  Ships.swift
//  FlyARFly
//
//  Created by Aubre Body on 12/29/17.
//  Copyright © 2017 Aubre Body. All rights reserved.
//


import ARKit

class Ships: SCNNode {
    
    func LoadModel() {
        guard let VirutalObject = SCNScene(named: "art.scnassets/ufo.scn") else {
            return
        }
        
        let wrapperNode = SCNNode()
        
        for child in VirutalObject.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        self.addChildNode(wrapperNode)
    }

}
