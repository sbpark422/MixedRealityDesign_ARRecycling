//
//  ContentView.swift
//  RecyclAR
//
//  Created by Soo Bin on 2/27/23.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        //let boxAnchor = try! Experience.loadBox()
        // Load the "FirstTrial" scene from the Reality File
        let anchor = try! FirstTrial.loadScene()
        
        // Add the box anchor to the scene
        //arView.scene.anchors.append(boxAnchor)
        arView.scene.anchors.append(anchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
