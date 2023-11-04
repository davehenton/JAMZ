class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

end
class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

  class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

    class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end
        end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

end
class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

  class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

    class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

        end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

end
class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

  class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

    class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

end
class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

  class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

    class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

        end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

end
class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

  class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

    class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

        end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

end
class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

  class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

    class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

end
class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

  class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end

    class User < ActiveRecord::Base

  include BCrypt

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end


