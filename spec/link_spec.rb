require 'spec_helper'

describe Link do
	
	context "Demonstration of how datamapper works" do
		#This is not a real test, it is simply a demo of how it works
		it 'should be created then retrieved form the db' do
		#In the beginning our database is empty so there are no links
			expect(Link.count).to eq(0)
			#this creates it in the database so its stored on the disk
			Link.create(:title => "Makers Academy",
									:url => "http://www.makersacademy.com")
			#we ask the database how many links we have, it should be one
			expect(Link.count).to eq(1)
			#lets get hte first and only link from the database
			link = Link.first
			#now it has all properties tha it was saved with
			expect(link.url).to eq("http://www.makersacademy.com")
			expect(link.title).to eq("Makers Academy")
			#if we want to we can destroy it
			link.destroy
			#so now we have no links in the database
			expect(Link.count).to eq(0)
		end
	end
end