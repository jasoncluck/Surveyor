class Student < ActiveRecord::Base
  attr_accessible :question1, :question2, :question3, :question4
  
  def self.to_csv
  	CSV.generate do |csv|
      csv << ["Question 1", "Question 2", "Question 3", "Question 4"]
 		  all.each do |student|
        csv << [student.question1, student.question2, student.question3, student.question4]
  		end
  	end
  end
end
