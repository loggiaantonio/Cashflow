import SwiftUI

struct LogoView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color(UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)) // Angepasste Hintergrundfarbe
                Image("cashflow_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped() // Verhindert, dass das Bild über den Rand hinausgeht
            }
            .ignoresSafeArea() // Stellt sicher, dass der gesamte Bildschirm gefüllt wird
            .onTapGesture {
                withAnimation {
                    NotificationCenter.default.post(name: .showContentView, object: nil)
                }
            }
        }
    }
}

extension Notification.Name {
    static let showContentView = Notification.Name("showContentView")
}

#Preview {
    LogoView()
}
