import Runestone
import UIKit

class SynthWave: EditorTheme {
    
    var statusBarStyle: UIStatusBarStyle = .lightContent
    
    var backgroundColor: UIColor = .synthWave.backgroundColor
    
    var textColor: UIColor = .synthWave.foreground
    
    var gutterBackgroundColor: UIColor = .synthWave.backgroundColor
    
    var gutterHairlineColor: UIColor = .synthWave.backgroundColor
    
    var lineNumberColor: UIColor = .synthWave.white.withAlphaComponent(0.45)
    
    //var lineNumberFont: UIFont = .boldSystemFont(ofSize: 1)
    
    var selectedLineBackgroundColor: UIColor = .synthWave.currentLine
    
    var selectedLinesLineNumberColor: UIColor = .synthWave.white.withAlphaComponent(0.8)
    
    var selectedLinesGutterBackgroundColor: UIColor = .synthWave.backgroundColor
    
    var invisibleCharactersColor: UIColor = .synthWave.comment
    
    var pageGuideHairlineColor: UIColor = .synthWave.foreground.withAlphaComponent(0.1)
    
    var pageGuideBackgroundColor: UIColor = .synthWave.foreground.withAlphaComponent(0.2)
    
    var markedTextBackgroundColor: UIColor = .synthWave.foreground.withAlphaComponent(0.2)
    
    func shadow(for highlightName: String) -> NSShadow? {
        guard let highlightName = HighlightName(highlightName) else { return nil }
        let shadow = NSShadow()
        shadow.shadowOffset = .zero
        shadow.shadowBlurRadius = 8
        switch highlightName {
        case .keyword, .function:
            shadow.shadowColor = UIColor.synthWave.amber
            return shadow
        case .functionBuiltin, .property, .functionMethod:
            shadow.shadowColor = UIColor.synthWave.brightCyan
            return shadow
        case .variable, .variableParameter, .variableBuiltin:
            shadow.shadowBlurRadius = 5
            shadow.shadowColor = UIColor("#dc078e").withAlphaComponent(0.2)
            return shadow
        default:
            return nil
        }
    }
    
    func textColor(for highlightName: String) -> UIColor? {
        print("for highlightName: \(highlightName)")
        guard let highlightName = HighlightName(highlightName) else { return nil }
        switch highlightName {
        case .comment:
            return .synthWave.comment
        case .keyword, .function:
            return .synthWave.ivory
        case .functionBuiltin, .property, .functionMethod:
            return .synthWave.lightGray
        case .variable, .variableParameter, .variableBuiltin:
            return .synthWave.fuchsia
        case .string, .constantBuiltin:
            return .synthWave.coral
        case .embedded, .punctuationSpecial:
            return .synthWave.purple
        case .punctuationBracket:
            return .synthWave.yellow
        case .number, .stringSpecialKey:
            return .synthWave.brightCyan
        default:
            return nil
        }
    }
    
    func fontTraits(for highlightName: String) -> FontTraits {
        guard let highlightName = HighlightName(highlightName) else {
            return []
        }
        if highlightName == .keyword {
            return .bold
        } else {
            return []
        }
    }
    
    
}

extension UIColor {
    
    fileprivate struct SynthWave {
        var backgroundColor: UIColor {
            return UIColor("#262335")
        }
        
        var currentLine: UIColor {
            return white.withAlphaComponent(0.125)
        }
        
        var selection: UIColor {
            return .init("#373b41")
        }
        
        var foreground: UIColor {
            return .init("#f0f0f0")
        }
        
        var comment: UIColor {
            return .init("#848bbd")
        }
        
        var ivory: UIColor {
            return .init("#F5EEE3")
        }
        
        var amber: UIColor {
            return .init("#f39f05")
        }
        
        var fuchsia: UIColor {
            return .init("#f92aad")
        }
        
        var lightGray: UIColor {
            return .init("#fdfdfd")
        }
        
        var brightCyan: UIColor {
            return .init("#36f9f6")
        }
        
        var coral: UIColor {
            return .init("#f97e72")
        }
        
        var white: UIColor {
            return .white
        }
        
        var red: UIColor {
            return .init("#cc6666")
        }
        
        var orange: UIColor {
            return .init("#f97e92")
        }
        
        var yellow: UIColor {
            return .init("#f0c674")
        }
        
        var green: UIColor {
            return .init("#b5bd68")
        }
        
        var aqua: UIColor {
            return .init("#8abeb7")
        }
        
        var blue: UIColor {
            return .init("#81a2be")
        }
        
        var purple: UIColor {
            return .init("#b294bb")
        }
    }
    
    static fileprivate let synthWave = SynthWave()

}