class Channel < ApplicationRecord
    has_many :messages
    broadcasts
end
