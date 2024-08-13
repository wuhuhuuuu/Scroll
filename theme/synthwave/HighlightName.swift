import Foundation

enum HighlightName: String {
    case attribute
    case boolean
    case comment
    case constant
    case constantBuiltin = "constant.builtin"
    case constantCharacter = "constant.character"
    case constructor
    case embedded
    case escape
    case field
    case function
    case functionBuiltin = "function.builtin"
    case functionMethod = "function.method"
    case keyword
    case number
    case none
    case `operator`
    case property
    case punctuation
    case punctuationBracket = "punctuation.bracket"
    case punctuationDelimiter = "punctuation.delimiter"
    case punctuationSpecial = "punctuation.special"
    case string
    case stringEscape = "string.escape"
    case stringSpecial = "string.special"
    case stringSpecialKey = "string.special.key"
    case tag
    case tagBuiltin = "tag.builtin"
    case tagError = "tag.error"
    case textEmphasis = "text.emphasis"
    case textLiteral = "text.literal"
    case textReference = "text.reference"
    case textStrong = "text.strong"
    case textTitle = "text.title"
    case textURI = "text.uri"
    case type
    case variable
    case variableBuiltin = "variable.builtin"
    case variableParameter = "variable.parameter"

    init?(_ rawHighlightName: String) {
        var comps = rawHighlightName.split(separator: ".")
        while !comps.isEmpty {
            let candidateRawHighlightName = comps.joined(separator: ".")
            if let highlightName = Self(rawValue: candidateRawHighlightName) {
                self = highlightName
                return
            }
            comps.removeLast()
        }
        return nil
    }
}
