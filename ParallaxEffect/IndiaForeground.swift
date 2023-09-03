

import SwiftUI
import CoreMotion
import SpriteKit

struct IndiaFront : View {

    @StateObject private var motion = MotionManager()
    @State private var xOffset: CGFloat = 20

    private var scene: SKScene {
        let scene = MagicScene()
        scene.scaleMode = .resizeFill
        scene.backgroundColor = .clear
        return scene
    }
    
    var body: some View {
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [.green, .white, .green]), // Replace with your desired colors
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea(.all)
            
//            SpriteView(scene: scene, options: [.allowsTransparency])
                        
            GeometryReader { geo in
                Image("india2") // Replace with your foreground image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .offset(x: xOffset)
                    .aspectRatio(1, contentMode: .fit)
            }
            .offset(x: CGFloat(motion.x * Double(50)), y: CGFloat(motion.y * 50))
            .offset(y: 120)
        }
    }
}



struct IndiaFront_Previews: PreviewProvider {
    static var previews: some View {
        IndiaFront()
    }
}
