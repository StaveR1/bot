require'telegram/bot' 
TOKEN = '5559756358:AAGRAatZ_JAH_Fq1KkUUykZSjIE0pVVeckQ' 
ANSWERS =[ 
50, 
55, 
60,
65, 
70,
75,  
] 
Telegram::Bot::Client.run(TOKEN) do |bot| 
 bot.listen do |message| 
  case message.text() 
 
  when '/start' 
   bot.api.send_message( 
    chat_id: message.chat.id, 
    text:"Привіт, #{message.from.first_name}") 
  else 
    bot.api.send_message( 
    chat_id: message.chat.id, 
    text:"Ти отримаєш оцінку за бота: #{ANSWERS.sample}") 
 
    
  end 
  end 
  
end