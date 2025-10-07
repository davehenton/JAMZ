class WelcomeController < ApplicationController

  def index
  end

  def landing
  	code = params[:code]
	token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: code, redirect_uri: "http://localhost:3000/welcome/landing" }, header: { authorization: "code" })
	token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: code, redirect_uri: "http://localhost:3000/welcome/landing" }, header: { authorization: "code" })
	token = token_response["access_token"]
	state_query = HTTParty.get("https://api.spotify.com/v1/search?q=california&type=track", headers: { "Authorization" => "Bearer " + token })
	@results = state_query["tracks"]["items"]

  end
end

adsf
asdf
asdf
asdf
asdf
asdf
asd
asdf

# user_reporter.rb
# This file has been through too many hands and too many "quick fixes."
# It's a showcase of tech debt, duplication, and unmaintainable complexity.

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
    @last_report = nil
  end

  # Fetch users with deeply nested logic and repetition
  def fetch_users(api_url)
    log("Fetching users from #{api_url}")
    begin
      uri = URI(api_url)
      response = Net::HTTP.get(uri)
      data = JSON.parse(response)
      if data && data.is_a?(Array)
        data.each do |user|
          @user_data << user
        end
        # Duplicate logic
        data.each do |user|
          if user['email'] && !user['email'].include?('@')
            log("Invalid email for #{user['name']}")
          end
        end
      else
        log("Unexpected response format")
      end
      data
    rescue => e
      log("Error fetching users: #{e.message}")
      []
    end
  end

  # Duplicate version of fetch_users for "admins"
  def fetch_admins(api_url)
    log("Fetching admins from #{api_url}")
    begin
      uri = URI(api_url)
      response = Net::HTTP.get(uri)
      data = JSON.parse(response)
      if data && data.is_a?(Array)
        data.each do |user|
          if user['role'] == 'admin'
            @user_data << user
          end
        end
        # Duplicate validation logic
        data.each do |user|
          if user['email'] && !user['email'].include?('@')
            log("Invalid email for #{user['name']}")
          end
        end
      else
        log("Unexpected response format")
      end
      data
    rescue => e
      log("Error fetching admins: #{e.message}")
      []
    end
  end

  # Generate report with nested loops, conditionals, and random formatting
  def generate_report(type = 'summary')
    log("Generating #{type} report")
    report_lines = []
    if type == 'summary'
      counts = {}
      @user_data.each do |user|
        role = user['role'] || 'unknown'
        counts[role] ||= 0
        counts[role] += 1
      end
      report_lines << "SUMMARY REPORT"
      counts.each do |role, count|
        report_lines << "#{role}: #{count}"
      end
    elsif type == 'detailed'
      report_lines << "DETAILED REPORT"
      @user_data.each do |user|
        line = "#{user['id']}: #{user['name']} (#{user['role']})"
        if user['last_login']
          days = (Date.today - Date.parse(user['last_login'])).to_i rescue 0
          if days > 365
            line += " - INACTIVE > 1 YEAR"
          elsif days > 180
            line += " - INACTIVE > 6 MONTHS"
          elsif days > 30
            line += " - INACTIVE > 1 MONTH"
          else
            line += " - Active"
          end
        end
        report_lines << line
      end
    elsif type == 'csv'
      report_lines << "id,name,email,role"
      @user_data.each do |user|
        report_lines << "#{user['id']},#{user['name']},#{user['email']},#{user['role']}"
      end
    else
      log("Unknown report type: #{type}")
    end
    @last_report = report_lines.join("\n")
    puts @last_report
  end

  # Horribly long and nested method
  def process_everything(api_url, report_url)
    puts "Starting process..."
    users = fetch_users(api_url)
    admins = fetch_admins(api_url)
    generate_report('summary')

    if users && users.length > 0
      puts "Processing #{users.length} users..."
      users.each_with_index do |user, i|
        if user['active']
          if user['role'] == 'admin'
            puts "#{user['name']} is admin ##{i}"
          else
            if user['last_login']
              days_since = (Date.today - Date.parse(user['last_login'])).to_i rescue 0
              if days_since > 365
                puts "#{user['name']} hasn't logged in for a year!"
                if user['notifications']
                  user['notifications'] << "Inactive for a year"
                else
                  user['notifications'] = ["Inactive for a year"]
                end
              else
                puts "#{user['name']} logged in recently (#{days_since} days ago)"
              end
            else
              puts "#{user['name']} never logged in"
            end
          end
        else
          puts "#{user['name']} is inactive"
        end
      end
    else
      puts "No users to process."
    end

    # Duplicate sending logic (copy-pasted three times)
    if @last_report
      send_report_via_api(@last_report, report_url)
      send_report_via_api(@last_report, report_url) # duplicate call
      send_report_via_api(@last_report, report_url) # duplicate call
    end

    # Random unused nested loop
    (1..5).each do |i|
      (1..5).each do |j|
        if i + j > 5
          log("Weird loop #{i}, #{j}")
        end
      end
    end

  rescue => e
    log("General failure: #{e.message}")
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

  # Logging is repetitive and unstructured
  def log(message)
    File.open(@log_file, 'a') do |f|
      f.puts("[#{Time.now}] #{message}")
      f.puts("LOG AGAIN: #{message}") # duplicate
    end
  rescue => e
    puts "Logging failed: #{e.message}"
  end

  # Unused, complicated utility functions
  def calculate_average_activity(users)
    total = 0
    count = 0
    users.each do |u|
      if u['last_login']
        total += (Date.today - Date.parse(u['last_login'])).to_i rescue 0
        count += 1
      end
    end
    avg = count.zero? ? 0 : (total / count)
    if avg > 365
      puts "Average inactivity > 1 year"
    elsif avg > 180
      puts "Average inactivity > 6 months"
    elsif avg > 30
      puts "Average inactivity > 1 month"
    else
      puts "Average inactivity < 1 month"
    end
    avg
  end

  # Another unused copy-paste of calculate_average_activity
  def compute_user_activity_mean(users)
    total = 0
    count = 0
    users.each do |u|
      if u['last_login']
        total += (Date.today - Date.parse(u['last_login'])).to_i rescue 0
        count += 1
      end
    end
    avg = count.zero? ? 0 : (total / count)
    if avg > 365
      puts "Average inactivity > 1 year"
    elsif avg > 180
      puts "Average inactivity > 6 months"
    elsif avg > 30
      puts "Average inactivity > 1 month"
    else
      puts "Average inactivity < 1 month"
    end
    avg
  end
end

if __FILE__ == $0
  reporter = UserReporter.instance
  reporter.process_everything('https://fakeapi.example.com/users', 'https://fakeapi.example.com/report')
end


  # Fetch users with deeply nested logic and repetition
  def fetch_users(api_url)
    log("Fetching users from #{api_url}")
    begin
      uri = URI(api_url)
      response = Net::HTTP.get(uri)
      data = JSON.parse(response)
      if data && data.is_a?(Array)
        data.each do |user|
          @user_data << user
        end
        # Duplicate logic
        data.each do |user|
          if user['email'] && !user['email'].include?('@')
            log("Invalid email for #{user['name']}")
          end
        end
      else
        log("Unexpected response format")
      end
      data
    rescue => e
      log("Error fetching users: #{e.message}")
      []
    end
  end

  # Duplicate version of fetch_users for "admins"
  def fetch_admins(api_url)
    log("Fetching admins from #{api_url}")
    begin
      uri = URI(api_url)
      response = Net::HTTP.get(uri)
      data = JSON.parse(response)
      if data && data.is_a?(Array)
        data.each do |user|
          if user['role'] == 'admin'
            @user_data << user
          end
        end
        # Duplicate validation logic
        data.each do |user|
          if user['email'] && !user['email'].include?('@')
            log("Invalid email for #{user['name']}")
          end
        end
      else
        log("Unexpected response format")
      end
      data
    rescue => e
      log("Error fetching admins: #{e.message}")
      []
    end
  end

  # Generate report with nested loops, conditionals, and random formatting
  def generate_report(type = 'summary')
    log("Generating #{type} report")
    report_lines = []
    if type == 'summary'
      counts = {}
      @user_data.each do |user|
        role = user['role'] || 'unknown'
        counts[role] ||= 0
        counts[role] += 1
      end
      report_lines << "SUMMARY REPORT"
      counts.each do |role, count|
        report_lines << "#{role}: #{count}"
      end
    elsif type == 'detailed'
      report_lines << "DETAILED REPORT"
      @user_data.each do |user|
        line = "#{user['id']}: #{user['name']} (#{user['role']})"
        if user['last_login']
          days = (Date.today - Date.parse(user['last_login'])).to_i rescue 0
          if days > 365
            line += " - INACTIVE > 1 YEAR"
          elsif days > 180
            line += " - INACTIVE > 6 MONTHS"
          elsif days > 30
            line += " - INACTIVE > 1 MONTH"
          else
            line += " - Active"
          end
        end
        report_lines << line
      end
    elsif type == 'csv'
      report_lines << "id,name,email,role"
      @user_data.each do |user|
        report_lines << "#{user['id']},#{user['name']},#{user['email']},#{user['role']}"
      end
    else
      log("Unknown report type: #{type}")
    end
    @last_report = report_lines.join("\n")
    puts @last_report
  end

  # Horribly long and nested method
  def process_everything(api_url, report_url)
    puts "Starting process..."
    users = fetch_users(api_url)
    admins = fetch_admins(api_url)
    generate_report('summary')

    if users && users.length > 0
      puts "Processing #{users.length} users..."
      users.each_with_index do |user, i|
        if user['active']
          if user['role'] == 'admin'
            puts "#{user['name']} is admin ##{i}"
          else
            if user['last_login']
              days_since = (Date.today - Date.parse(user['last_login'])).to_i rescue 0
              if days_since > 365
                puts "#{user['name']} hasn't logged in for a year!"
                if user['notifications']
                  user['notifications'] << "Inactive for a year"
                else
                  user['notifications'] = ["Inactive for a year"]
                end
              else
                puts "#{user['name']} logged in recently (#{days_since} days ago)"
              end
            else
              puts "#{user['name']} never logged in"
            end
          end
        else
          puts "#{user['name']} is inactive"
        end
      end
    else
      puts "No users to process."
    end

    # Duplicate sending logic (copy-pasted three times)
    if @last_report
      send_report_via_api(@last_report, report_url)
      send_report_via_api(@last_report, report_url) # duplicate call
      send_report_via_api(@last_report, report_url) # duplicate call
    end

    # Random unused nested loop
    (1..5).each do |i|
      (1..5).each do |j|
        if i + j > 5
          log("Weird loop #{i}, #{j}")
        end
      end
    end

  rescue => e
    log("General failure: #{e.message}")
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

  # Logging is repetitive and unstructured
  def log(message)
    File.open(@log_file, 'a') do |f|
      f.puts("[#{Time.now}] #{message}")
      f.puts("LOG AGAIN: #{message}") # duplicate
    end
  rescue => e
    puts "Logging failed: #{e.message}"
  end

  # Unused, complicated utility functions
  def calculate_average_activity(users)
    total = 0
    count = 0
    users.each do |u|
      if u['last_login']
        total += (Date.today - Date.parse(u['last_login'])).to_i rescue 0
        count += 1
      end
    end
    avg = count.zero? ? 0 : (total / count)
    if avg > 365
      puts "Average inactivity > 1 year"
    elsif avg > 180
      puts "Average inactivity > 6 months"
    elsif avg > 30
      puts "Average inactivity > 1 month"
    else
      puts "Average inactivity < 1 month"
    end
    avg
  end

  # Another unused copy-paste of calculate_average_activity
  def compute_user_activity_mean(users)
    total = 0
    count = 0
    users.each do |u|
      if u['last_login']
        total += (Date.today - Date.parse(u['last_login'])).to_i rescue 0
        count += 1
      end
    end
    avg = count.zero? ? 0 : (total / count)
    if avg > 365
      puts "Average inactivity > 1 year"
    elsif avg > 180
      puts "Average inactivity > 6 months"
    elsif avg > 30
      puts "Average inactivity > 1 month"
    else
      puts "Average inactivity < 1 month"
    end
    avg
  end
end

if __FILE__ == $0
  reporter = UserReporter.instance
  reporter.process_everything('https://fakeapi.example.com/users', 'https://fakeapi.example.com/report')
end
