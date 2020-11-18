class Gig < ApplicationRecord
    validates :hidden, :band, :venue_stream, :v_s_link, :support, :date, :time, presence: true
end