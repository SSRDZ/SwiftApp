
import SwiftUI

struct Login: View {
    @Environment(\.dismiss) var dismiss //this is sub view
    @State var username: String = ""
    @State var password: String = ""
    @State var showHome = false
    @State var isPresenting = false
    
    @State var accountManager = AccountManager()
    
    var body: some View
    {
        NavigationView{
            VStack
            {
                Image("logo")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 3.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: nil, height: nil)
                
                Spacer()
                TextField("username/email/phone number", text: $username) //input to username
                    .background(Color.white)
                    .cornerRadius(100)
                    .frame(width: 300, height: nil)
                    .font(Font.system(size: 12, design: .default))
                
                TextField("password", text: $password) //input to password
                    .background(Color.white)
                    .cornerRadius(100)
                    .frame(width: 300, height: nil)
                    .font(Font.system(size: 12, design: .default))
                HStack{
                    Spacer()
                    Button("forgot password?",action: {SignIn()})//อย่าลืมเปลี่ยนเป็นฟังชั่นลืมรหัส
                        .font(Font.system(size: 16, design: .default))
                }
                
                NavigationLink(destination: ReserveScreen(), isActive: $isPresenting){}
                    Button("sign in             ",action: {SignIn()}) //อย่าลืมเปลี่ยนเป็นฟังชันไซน์อิน
                        .buttonStyle(.bordered)
                        .foregroundColor(.white)
                        .background(.brown)
                        .cornerRadius(10)
                
            
                Text("or sign in with....")
                    .padding(.top, 60)
                    .padding(.trailing,150)
                    .font(Font.system(size: 16, design: .default))
                //            Button("facebook              ",action: {Complete()})
                
                Button {
                action: do {SignIn()}
                } label: {
                    Image("f")
                    
                }
                Button {
                action: do {SignIn()}
                } label: {
                    Image("l")
                    
                }
                Button {
                action: do {SignIn()}
                } label: {
                    Image("g")
                    
                }
                
                Spacer()
                
                Text("Don’t have an account yet?")
                Button("sign up",action: {SignIn()})
            }
            
            .padding(47.62)
            .background(Color("skin"))
            .textFieldStyle(WhiteBorder())
            
        }
    }
    
    @State private var isActive = false
    
    func SignIn()
    {
        if(accountManager.TryLogin(name: username, email: username, password: password) == true)
        {
            isPresenting = true;
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
    Login()
}
