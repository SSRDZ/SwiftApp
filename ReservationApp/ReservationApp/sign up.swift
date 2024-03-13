
import SwiftUI

struct SignUp: View {
    @Environment(\.dismiss) var dismiss //this is sub view
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    @State var inLogin = false
    var accountManager = AccountManager.accountInstance
    
    var body: some View
    {
        NavigationView
        {
            VStack
            {
                Image("logo")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 3.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: nil, height: nil)
                
                Spacer()
                TextField("email", text: $email)
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
                
                
                NavigationLink(destination: Login(), isActive: $inLogin) {}
                    Button("sign up             ",action: {SignUp()}) //อย่าลืมเปลี่ยนเป็นฟังชันไซน์อิน
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
                action: do {SignUp()}
                } label: {
                    Image("f")
                }
                Button {
                action: do {SignUp()}
                } label: {
                    Image("l")
                }
                Button {
                action: do {SignUp()}
                } label: {
                    Image("g")
                }
                
                Spacer()
            }
            .padding(47.62)
            .background(Color("skin"))
            .textFieldStyle(WhiteBorder())
        }
    }
    
    func SignUp()
    {
        if accountManager.CheckAccount(name: username, email: email) == true
        {
            accountManager.CreateNewAccount(name: username, email: email, password: password)
//            inLogin = true
            dismiss()
        }
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
