describe User, type: :model do
  describe 'validations' do
    it {should validate_presence_of :password_digest}
    it {should validate_presence_of :username}
    it {should validate_uniqueness_of :username}
  end
end