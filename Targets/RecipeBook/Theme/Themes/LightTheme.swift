import SwiftUI

struct LightTheme: Theme {
    let colors: Colors = LightColors()
}

struct LightColors: Colors {
    let background: BackgroundColors = LightBackgroundColors()
    let label: LabelColors = LightLabelColors()
}

struct LightBackgroundColors: BackgroundColors {
    var primary: Color = .red
    var secondary: Color = .red.opacity(0.5)
}

struct LightLabelColors: LabelColors {
    let primary: Color = .yellow
    let secondary: Color = .yellow.opacity(0.5)
}

