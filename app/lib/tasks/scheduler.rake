desc "This task is called by the Heroku cron add-on"
task :call_page => :environment do
   require 'net/http'
   uri = URI.parse('https://dojocon-hubot.herokuapp.com/')
   Net::HTTP.get(uri)
 end