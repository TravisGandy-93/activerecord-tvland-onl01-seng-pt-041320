class Show < ActiveRecord::Base
   has_many :characters
   has_many :actors, through: :characters
   belongs_to :network
   
   def actors_list
     self.actors.all.each{|a| a}
   end 
end
