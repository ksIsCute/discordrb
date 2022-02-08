require 'discordrb'

config = File.foreach('config.txt').map { |line| line.split(' ').join(' ') }

bot = Discordrb::Commands::CommandBot.new token: "#{config[0].to_s}", client_id: "#{config[1].to_s}", prefix: "#{config[2].to_s}"
