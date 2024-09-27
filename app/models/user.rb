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
require "securerandom"

module DuplicationExample
  def identical(message, header: true)
    body = []
    body << "-- HEADER --" if header
    body << "-- MESSAGE --"
    body << message
    body << "-- FOOTER --"
    message = body.join("\n")

    if message.length > 100
      message[0, 100]
    else
      message
    end
  end

  def similar
    hex = SecureRandom.hex(20)
    hex.reverse
    hex += "-suffix"

    if hex.start_with?("z")
      hex += "something-else"
    end

    hex
  end
end
require "securerandom"

module DuplicationExample
  def identical(message, header: true)
    body = []
    body << "-- HEADER --" if header
    body << "-- MESSAGE --"
    body << message
    body << "-- FOOTER --"
    message = body.join("\n")

    if message.length > 100
      message[0, 100]
    else
      message
    end
  end

  def similar
    hex = SecureRandom.hex(20)
    hex.reverse
    hex += "-suffix"

    if hex.start_with?("z")
      hex += "something-else"
    end

    hex
  end
end
require "securerandom"

module DuplicationExample
  def identical(message, header: true)
    body = []
    body << "-- HEADER --" if header
    body << "-- MESSAGE --"
    body << message
    body << "-- FOOTER --"
    message = body.join("\n")

    if message.length > 100
      message[0, 100]
    else
      message
    end
  end

  def similar
    hex = SecureRandom.hex(20)
    hex.reverse
    hex += "-suffix"

    if hex.start_with?("z")
      hex += "something-else"
    end

    hex
  end
end
require "securerandom"

module DuplicationExample
  def identical(message, header: true)
    body = []
    body << "-- HEADER --" if header
    body << "-- MESSAGE --"
    body << message
    body << "-- FOOTER --"
    message = body.join("\n")

    if message.length > 100
      message[0, 100]
    else
      message
    end
  end

  def similar
    hex = SecureRandom.hex(20)
    hex.reverse
    hex += "-suffix"

    if hex.start_with?("z")
      hex += "something-else"
    end

    hex
  end
end
require "securerandom"

module DuplicationExample
  def identical(message, header: true)
    body = []
    body << "-- HEADER --" if header
    body << "-- MESSAGE --"
    body << message
    body << "-- FOOTER --"
    message = body.join("\n")

    if message.length > 100
      message[0, 100]
    else
      message
    end
  end

  def similar
    hex = SecureRandom.hex(20)
    hex.reverse
    hex += "-suffix"

    if hex.start_with?("z")
      hex += "something-else"
    end

    hex
  end
end
class FooBar
  def run(items = gets.chomp.to_i)
    if items > 0
      list = []
      (1..items).each do |n|
        if n % 3 == 0 && n % 5 == 0
          list << "FOOBAR"
        elsif n % 3 == 0
          list << "FOO"
        elsif n % 5 == 0
          list << "BAR"
        else
          list << n
        end
      end
    else
      puts "Please enter a positive number"
    end

    list
  end
end
class FooBar
  def run(items = gets.chomp.to_i)
    if items > 0
      list = []
      (1..items).each do |n|
        if n % 3 == 0 && n % 5 == 0
          list << "FOOBAR"
        elsif n % 3 == 0
          list << "FOO"
        elsif n % 5 == 0
          list << "BAR"
        else
          list << n
        end
      end
    else
      puts "Please enter a positive number"
    end

    list
  end
end
class FooBar
  def run(items = gets.chomp.to_i)
    if items > 0
      list = []
      (1..items).each do |n|
        if n % 3 == 0 && n % 5 == 0
          list << "FOOBAR"
        elsif n % 3 == 0
          list << "FOO"
        elsif n % 5 == 0
          list << "BAR"
        else
          list << n
        end
      end
    else
      puts "Please enter a positive number"
    end

    list
  end
end
class FooBar
  def run(items = gets.chomp.to_i)
    if items > 0
      list = []
      (1..items).each do |n|
        if n % 3 == 0 && n % 5 == 0
          list << "FOOBAR"
        elsif n % 3 == 0
          list << "FOO"
        elsif n % 5 == 0
          list << "BAR"
        else
          list << n
        end
      end
    else
      puts "Please enter a positive number"
    end

    list
  end
end
class FooBar
  def run(items = gets.chomp.to_i)
    if items > 0
      list = []
      (1..items).each do |n|
        if n % 3 == 0 && n % 5 == 0
          list << "FOOBAR"
        elsif n % 3 == 0
          list << "FOO"
        elsif n % 5 == 0
          list << "BAR"
        else
          list << n
        end
      end
    else
      puts "Please enter a positive number"
    end

    list
  end
end
