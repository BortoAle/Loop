import SwiftUI

struct ProgressBar: View {
    
    let progress: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .leading) {
                GeometryReader { value in
                    Capsule()
                        .frame(maxWidth: .infinity)
                        .frame(height: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    Capsule()
                        .frame(width: value.size.width / 10 * CGFloat(progress), height: 10)
                        .foregroundColor(.accentColor)
                }
                .frame(height: 10)
            }
            Text("\(progress * 10)% completed")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .animation(.easeInOut, value: progress)
    }
}
