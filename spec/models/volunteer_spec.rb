require 'spec_helper'

#code from Kerri's lecture
describe Volunteer do
	let(:unnamed_volunteer) { Volunteer.new(email: "abcdef@mail.com") }
	let(:named_volunteer) { Volunteer.new(name: "Abcdef Ghijkl")}
	
	context "testing name validation" do
		it "will be invalid if name is blank" do
			expect(unnamed_volunteer.valid?).to be_false
		end
		
		it "will be valid if there is a name" do
			unnamed_volunteer.name = "Abcdef ghi"
			expect(unnamed_volunteer.valid?).to be_true
		end
	end
	
	context "testing email validation" do
		it "will be invalid when email is blank" do
			expect(unnamed_volunteer.valid?).to be_false
		end
	end	
	
end
