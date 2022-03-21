class Role < ActiveRecord::Base
    has_many :auditions

    #returns an array of names from the actors associated with this role
    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end
    
    #returns an array of locations from the auditions associated with this role
    def locations
        self.auditions.map do |audition|
            place.location
        end
    end

    # returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
    def lead
        find = self.auditions.find{|audition| audition.hired == true}
        find ? find : "no actor has been hired for this role"
    end

    # returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
    def understudy
        find = self.auditions.select{|audition| audition.hired == true}
        find.second ? find.second : "no actor has been hired for this role"
    end

end