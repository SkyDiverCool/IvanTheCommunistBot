require 'telegram/bot'

token = 'token'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, Tovarish #{message.from.first_name}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Goodbye My Dear Friend")
    when '/communism'
      bot.api.send_message(chat_id: message.chat.id, text: "Lets Build Communism Together")
    when '/news'
      bot.api.send_message(chat_id: message.chat.id, text: "As Tovarish Wissotskiy Said, Everything Is Good, Pelmeni only on Saturdays")
    when '/leader'
      bot.api.send_message(chat_id: message.chat.id, text: "The Leader Of The Communist State Is Tovarish @Wissotsky")
    end
  end
end
