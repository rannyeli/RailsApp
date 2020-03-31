class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    # define the data to view from the db
    def self.react
        where(subtitle: 'React')
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
