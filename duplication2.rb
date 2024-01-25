require "securerandom"

class AnotherExample
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

    if hex.start_with?("a")
      hex += "something"
    end

    hex
  end
end
