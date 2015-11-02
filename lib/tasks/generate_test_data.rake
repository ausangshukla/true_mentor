namespace :tm do    
  
  require "faker"
  require 'digest/sha1'  
  require 'factory_girl'  
  # require File.expand_path("spec/factories.rb")
  
  
  desc "Cleans p DB - DELETES everything -  watch out" 
  task :emptyDB => :environment do
  	User.delete_all
  	Repository.delete_all
  	Idea.delete_all
  	IdeaComponent.delete_all
  end
  
  
  
  
  desc "generates fake users for testing" 
  task :generateFakeUsers => :environment do

	begin    
  
	    # Now generate some consumers
	    (1..20).each do |j|    
	      u = FactoryGirl.build(:user)
	      u.save
	      puts "User #{u.id}"  
	    end
    
    rescue Exception => exception
      puts exception.backtrace.join("\n")
      raise exception
    end
    
  end  
  
  desc "generates fake users for testing" 
  task :generateFakeAdmin => :environment do
    
    begin    
      
      u = FactoryGirl.build(:user, email: "admin@tm.com", password: "admin@tm.com", role: "Super")
      u.save
      puts u.to_xml              
   
    rescue Exception => exception
      puts exception.backtrace.join("\n")
      raise exception
    end
    
  end  
  

  desc "generates fake repos for testing" 
  task :generateFakeRepos => :environment do
    
    begin    
      (1..10).each do |i|		  
      	u = FactoryGirl.build(:repository)
      	u.save
      	puts u.id
      end              
   
    rescue Exception => exception
      puts exception.backtrace.join("\n")
      raise exception
    end
    
  end
  
  desc "generates fake ideas for testing" 
  task :generateFakeIdeas => :environment do
    
    begin    
      Repository.all.each do |repo|
	      (1..5).each do |i|
		      i = FactoryGirl.build(:idea, repository_id:repo.id)
		      i.save
		      (1..5).each do |x|
		      	ic = FactoryGirl.build(:idea_component, idea_id:i.id)
		      	ic.save
		      end
		  end
	  end
   
    rescue Exception => exception
      puts exception.backtrace.join("\n")
      raise exception
    end
    
  end  

    
  desc "Generating all Fake Data"
  task :generateFakeAll => [:emptyDB, :generateFakeUsers, :generateFakeRepos, :generateFakeIdeas] do
    puts "Generating all Fake Data"
  end
  
 	
end