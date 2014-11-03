class User < ActiveRecord::Base
  # Remember to create a migration!
  # validates :name, :uniqueness => true
  has_many  :rounds

  def authenticate(name, password)
    user = User.find_by(name: name)
    # BCrypt::Password.new(user.password) == BCrypt::Password.new(password)
    BCrypt::Password.new(user.password) == password
  end
end
