#this is going to be mainly in ruby now
require = 'discordrb'

bot.run :async

bot = Discordrb::Bot.new token: 'MzE1NjM3NjIyNzQxNjYzNzQ0.DAJoKg.v-0FQ69RBU8Lt2bf_yS2ryQlWhA', client_id: 315637622741663744
bot.message(with_text: "Hey Bot!") do |event|
  event.respond "Hi, #{event.user.name}!"
end
