require 'discordrb' #https://github.com/meew0/discordrb
require 'json'

def statuscheck(serverid)
    request = Net::HTTP.get(URI.parse('http://www.tiffit.net/RealmInfo/api/servers'))
    status = JSON.parse(request)[serverid]
    if status == "True";
        status = "up"
    else;
        status = "down"
    end
    event.respond "Hi, #{event.user.name}!"
    event.respond.respond.respond ("#{serverid} is currently #{status}.")
    event.respond.respond "#####"
    event.respond "[c/o walmart-givenchii]"
end

bot = Discordrb::Commands::CommandBot.new token: 'MzE1NjM3NjIyNzQxNjYzNzQ0.DAJoKg.v-0FQ69RBU8Lt2bf_yS2ryQlWhA', client_id: 315637622741663744, prefix: '!'

bot.command :server do |event, serverid|
    statuscheck(serverid)
end

bot.run
