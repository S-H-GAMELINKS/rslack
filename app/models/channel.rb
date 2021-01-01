class Channel < ApplicationRecord
    has_many :messages
    broadcasts
    broadcasts_to ->(channel) { 
        puts "\n############################################"
        puts "############################################"
        puts "############################################"
        puts "############################################"
        :channels 
    }
end
