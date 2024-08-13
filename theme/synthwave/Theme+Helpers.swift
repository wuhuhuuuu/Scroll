import Foundation
import Runestone
import UIKit

protocol EditorTheme: Runestone.Theme {
    
    var statusBarStyle: UIStatusBarStyle { get }
    
    var backgroundColor: UIColor { get }
}

extension EditorTheme {
    var font: UIFont {
        let size = UserDefaults.standard.double(forKey: "Font Size")
        return .monospacedSystemFont(ofSize: size, weight: .regular)
    }
    
    var lineNumberFont: UIFont {
        let size = UserDefaults.standard.double(forKey: "Font Size")
        return .monospacedSystemFont(ofSize: size, weight: .regular)
    }
}
