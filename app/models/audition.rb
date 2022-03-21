# require "pry"
class Audition < ActiveRecord::Base
    belongs_to :role

    # will change the the hired attribute to true
    def call_back
        # bind ing.pry
        self.hired = true
        self.save
    end
  
end

