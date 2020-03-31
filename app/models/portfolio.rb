class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.react # define the data to view from the db
        where(subtitle: 'React')
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') } # define the data to view from the db

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "http://placehold.it/600x200"
        self.thumb_image ||= "http://placehold.it/350x200"
    end 
end
 1