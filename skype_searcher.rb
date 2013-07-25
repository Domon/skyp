require 'sqlite3'
require 'active_record'

ACCOUNT = ARGV[0]
DATABASE_PATH = "#{ Dir.home }/Library/Application Support/Skype/#{ ACCOUNT }/main.db"

CHAT = ARGV[1]
TERM = ARGV[2]

# Disable STI
ActiveRecord::Base.inheritance_column = nil

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', encoding: 'utf8', database: DATABASE_PATH)

class Chat < ActiveRecord::Base
  self.table_name = 'Chats'

  has_many :messages, :primary_key => :name, :foreign_key => :chatname
end

class Message < ActiveRecord::Base
  self.table_name = 'Messages'

  belongs_to :chat, :primary_key => :name, :foreign_key => :chatname
end

chat = Chat.find_by_friendlyname(CHAT)

messages = chat.messages.where('body_xml like ?', "%#{ TERM }%").order(:timestamp)
messages.each do |message|
  puts "[#{ message.timestamp }] #{ message.from_dispname }: #{ message.body_xml }"
end
