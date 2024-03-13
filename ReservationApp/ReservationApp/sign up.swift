
import SwiftUI

struct SignUp: View {
    @Environment(\.dismiss) var dismiss //this is sub view
    @State  var username: String = ""
    @State var password: String = ""
    
    
    
    
    var body: some View
    {
        VStack
        {
            Image("logo")
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 3.0, bottom: 0.0, trailing: 0.0))
                .frame(width: nil, height: nil)
            
            Spacer()
            TextField("email", text: $password)
                .background(Color.white)
                .cornerRadius(100)
                .frame(width: 300, height: nil)
                .font(Font.system(size: 12, design: .default))
            TextField("username", text: $username)
                .background(Color.white)
                .cornerRadius(100)
                .frame(width: 300, height: nil)
                .font(Font.system(size: 12, design: .default))
            
            TextField("password", text: $password)
                .background(Color.white)
                .cornerRadius(100)
                .frame(width: 300, height: nil)
                .font(Font.system(size: 12, design: .default))
           
            
            
            Button("sign up             ",action: {Complete()}) //อย่าลืมเปลี่ยนเป็นฟังชันไซน์อิน
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(10)
            
            
            Text("or sign up with....")
                .padding(.top, 60)
                .padding(.trailing,150)
                .font(Font.system(size: 16, design: .default))
            //            Button("facebook              ",action: {Complete()})
            
            Button {
            action: do {Complete()}
            } label: {
                Image("f")

            }
            Button {
            action: do {Complete()}
            } label: {
                Image("l")

            }
            Button {
            action: do {Complete()}
            } label: {
                Image("g")

            }
            
            
            
            Spacer()
            
           
        }
        
        .padding(47.62)
        .background(Color("skin"))
        .textFieldStyle(WhiteBorder())
        
    }
    
    
    func Complete()
    {
        dismiss()
    }
    struct WhiteBorder: TextFieldStyle {
        func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth:2)
                )
        }
    }
    
    
}

#Preview
{
    SignUp()
}
