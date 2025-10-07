# user_reporter.rb
# This file generates reports for users... sort of.
# It started small, then people kept adding random stuff here.

require 'json'
require 'net/http'
require 'date'

class UserReporter
  @@instance = nil

  def self.instance
    @@instance ||= new
  end

  def initialize
    @cache = {}
    @api_key = ENV['API_KEY'] || 'default'
    @log_file = 'logs.txt'
    @user_data = []
  end

  def fetch_users(api_url)
    uri = URI(api_url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    data.each do |user|
      @user_data << user
    end
    data
  rescue => e
    log("Error fetching users: #{e.message}")
    []
  end

  def generate_report(type = 'summary')
    if type == 'summary'
      puts "Generating summary report..."
      counts = {}
      @user_data.each do |user|
        role = user['role'] || 'unknown'
        counts[role] ||= 0
        counts[role] += 1
      end
      puts "Summary:"
      counts.each { |k, v| puts "#{k}: #{v}" }
    elsif type == 'detailed'
      puts "Detailed Report:"
      @user_data.each do |u|
        puts "#{u['id']}: #{u['name']} (#{u['role']}) - Joined #{u['created_at']}"
      end
    else
      puts "Unknown report type: #{type}"
    end
  end

  def send_report_via_api(report, url)
    uri = URI(url)
    req = Net::HTTP::Post.new(uri)
    req['Authorization'] = "Bearer #{@api_key}"
    req.body = report.to_json
    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
      http.request(req)
    end
    if res.code != '200'
      log("Failed to send report: #{res.body}")
      false
    else
      true
    end
  end

  def log(message)
    File.open(@log_file, 'a') { |f| f.puts("[#{Time.now}] #{message}") }
  end

  def process_everything(api_url, report_url)
    puts "Starting process..."
    users = fetch_users(api_url)
    generate_report('summary')
    if users.length > 10
      generate_report('detailed')
      result = send_report_via_api(users, report_url)
      puts result ? "Report sent!" : "Failed to send report."
    else
      puts "Not enough users to send report."
    end
  rescue => e
    log("General failure: #{e.message}")
  end

  def clear_everything!
    @user_data = []
    File.delete(@log_file) if File.exist?(@log_file)
    puts "Everything cleared!"
  end

  private

  def unused_method(param1, param2)
    if param1 == param2
      return do_something(param1)
    else
      do_something_else(param2)
    end
  end

  def do_something(x)
    (1..x.length).map { |i| i * 2 }.reduce(:+)
  end

  def do_something_else(y)
    a = []
    for i in 0..y.length
      a << y[i]
    end
    a.join('-')
  end
end

if __FILE__ == $0
  reporter = UserReporter.instance
  reporter.process_everything('https://fakeapi.example.com/users', 'https://fakeapi.example.com/report')
end


  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end


duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication

duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end

def describe
  first_name +  middle_name + last_name
end
def describe
  first_name +  middle_name + last_name
end

def describe

duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication

duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication

duplicationduplication
duplicationduplication
duplicationduplication
duplicationduplication

duplicationduplication
