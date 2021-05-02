module ControllerMacros
    def login_student
      # Before each test, create and login the user
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:student]
        user = FactoryBot.create(:student)
        sign_in student
      end
    end
end