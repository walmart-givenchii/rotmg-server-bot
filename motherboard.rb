require 'discordrb' #https://github.com/meew0/discordrb
require 'json'
require './o_sys.rb'

bot = Discordrb::Commands::CommandBot.new token: 'MzE1NjM3NjIyNzQxNjYzNzQ0.DAJoKg.v-0FQ69RBU8Lt2bf_yS2ryQlWhA', client_id: 315637622741663744, prefix: '!'

bot.command :server do |event, serverid|
    o_sys.statuscheck(serverid)
end

bot.run
