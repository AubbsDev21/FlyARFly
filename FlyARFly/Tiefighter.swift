//
//  Tiefighter.swift
//  FlyARFly
//
//  Created by Aubre Body on 1/10/18.
//  Copyright © 2018 Aubre Body. All rights reserved.
//

import ARKit

class Tiefighter: SCNNode {
    func LoadModel() {
        guard let VirutalObject = SCNScene(named: "art.scnassets/tie_tie.scn") else {
            return
        }
        
        let wrapperNode = SCNNode()
        
        for child in VirutalObject.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        self.addChildNode(wrapperNode)
    }
}
