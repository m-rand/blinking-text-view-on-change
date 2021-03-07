struct AnimatedText: View {
    
    @State private var opacity = 0.0
    var text: String
    var color: Color
        
    var body: some View {
        HStack {
            Text(text)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(color)
                        .opacity(opacity)
                )
                .onChange(of: text, perform: { _ in
                    withAnimation(Animation.easeInOut(duration: 0.7)) {
                        opacity = 0.8
                        withAnimation(Animation.easeOut(duration: 2.0)) {
                            opacity = 0.0
                        }
                    }
                })
        }
    }
}
