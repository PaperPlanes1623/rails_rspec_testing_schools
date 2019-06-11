require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  # Write your test below
  # it will be easier to test this controller with factory bot
    # you would have to add the gem and configure it.
    let(:valid_attributes) {
      {
      school_id: 1,
      name: "bob",
      student_number: 5,
      gpa: 3.0
      }
    }

    let(:invalid_attributes) {
      {
        school_id: 0,
        name: "bob",
        student_number: 5,
        gpa: 3.0
      }
    }

    describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      student = @school.student.create! valid_attributes
      get :edit, params: { id: student.id }
      expect(response).to be_successful
    end
  end
end
