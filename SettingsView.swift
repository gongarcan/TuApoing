import SwiftUI

struct SettingsView: View {
    @State private var sessionTypes = ["Terapia de 50'", "Sesión de pilates", "Sesión pélvico-perineal"]
    @State private var newType = ""

    var body: some View {
        Form {
            Section(header: Text("Tipos de sesión")) {
                ForEach(sessionTypes, id: \.self) { Text($0) }
                TextField("Nuevo tipo", text: $newType)
                Button("Añadir") {
                    if !newType.isEmpty {
                        sessionTypes.append(newType)
                        newType = ""
                    }
                }
            }
        }
    }
}