//
//  TieFighterTwo.swift
//  FlyARFly
//
//  Created by Aubre Body on 1/10/18.
//  Copyright © 2018 Aubre Body. All rights reserved.
//

import ARKit

class TieFighterTwo: SCNNode {
    func LoadModel() {
        guard let VirutalObject = SCNScene(named: "art.scnassets/tieFighter_interseped.scn") else {
            return
        }
        
        let wrapperNode = SCNNode()
        
        for child in VirutalObject.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        self.addChildNode(wrapperNode)
    }}
