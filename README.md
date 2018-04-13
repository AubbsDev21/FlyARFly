
<h1 align="center">FlyARFly</h1> <br>


<p align="center">
  <a href=" ">
    <img title="FlyARFly" src="https://user-images.githubusercontent.com/16025198/38338692-a0feab46-3838-11e8-8d3c-83dc26990e17.png" width="180">
  </a>
</p>


## Overview
<p align="center">
FlyARFly is a interactive application implementing Apples ARKit, SenceKit and, UIKit. As you press one of the three buttons on the screen a 3D model will appear.
</p>
<br>
<br>
<h3>Screenshot</h3>
<p align="center">
<img title="screenshot" src="https://user-images.githubusercontent.com/16025198/38339865-7db3b61c-383e-11e8-8a6d-92e61ee6d930.png">
</p>
<br>
<br>
<h3>DEMO</h3>
<div>
<img title="screenshot" src="https://user-images.githubusercontent.com/16025198/38339642-5183a706-383d-11e8-9a2b-59c518fa8270.gif">
</div>

## Code Exmaples 

Grabbing the VirutalObject or SCNScene and adding it as a childNode 
```bash
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

```



Loading the oject setting its position and adding the node to the scene
```bash
 @objc func addObject3 () {
        let object = TieFighterTwo()
        object.LoadModel()
        
        //positation
        object.position = SCNVector3(0, 0, -1.5)
        ARveiw.scene.rootNode.addChildNode(object)
        
    }
```
