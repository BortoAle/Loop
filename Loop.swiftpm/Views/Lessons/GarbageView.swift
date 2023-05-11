import SwiftUI

struct GarbageView: View {
    
    let selectedGarbage: Garbage
    let topSVId = "topSVId"
    let leadingSVId = "leadingSVId"
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ScrollViewReader { value in
                VStack(alignment: .leading, spacing: 44) {
                    garbageTitle
                    garbageDefinition
                    garbageTypes
                    garbageEmojis
                    recycleProcess
                    proTips
                    funFact
                }
                .padding()
                .id(topSVId)
                //Scroll to top when selectedGarbage changes
                .onChange(of: selectedGarbage.id, perform: { x in
                    value.scrollTo(topSVId, anchor: .top)
                })
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(maxWidth: 700)
    }
    
    var garbageTitle: some View {
        VStack {
            Image(systemName: selectedGarbage.symbolName)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(selectedGarbage.color)
                }
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
    
    var garbageDefinition: some View {
        Text(selectedGarbage.definition)
            .font(.title3)
    }
    
    var garbageTypes: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("🧬 Types")
                .font(.title3)
                .bold()
                .padding(.bottom, 8)
            
            Text(selectedGarbage.types)
        }
    }
    
    var garbageEmojis: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            ScrollViewReader { value in
                HStack(spacing: 16) {
                    ForEach(selectedGarbage.emojis, id: \.description.hashValue) { emoji in
                        VStack(alignment: .leading) {
                            Text(emoji.symbol)
                                .font(.system(size: 80))
                                .frame(width: 140, height: 80)
                                .padding(44)
                                .background {
                                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                                }
                            Text(emoji.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .id(leadingSVId)
                }
                //Scroll to leading when selectedGarbage changes
                .onChange(of: selectedGarbage.id, perform: { x in
                    value.scrollTo(leadingSVId, anchor: .leading)
                })
            }
        }
    }
    
    var recycleProcess: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("🏭 Recycle Process")
                .font(.title3)
                .bold()
                .padding(.bottom, 8)
            
            Text(selectedGarbage.recycleProcess)
        }
    }
    
    var proTips: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("♻️ Pro tips")
                .font(.title3)
                .bold()
                .padding(.bottom, 8)
            ForEach(selectedGarbage.tips, id: \.hashValue) { tip in
                Text("• \(tip)")
            }
        }
    }
    
    var funFact: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("💡 Did you know?")
                .font(.headline)
            Text(selectedGarbage.funFact)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.secondarySystemBackground))
        )
    }
}
