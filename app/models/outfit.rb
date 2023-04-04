class Outfit < ActiveRecord::Base
    has_many :articles
    has_many :comments
end