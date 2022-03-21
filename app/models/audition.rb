# require "pry"
class Audition < ActiveRecord::Base
    belongs_to :role

    def call_back
        # bind ing.pry
        self.hired = true
        self.save
    end
  
end

