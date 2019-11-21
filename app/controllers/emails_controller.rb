class EmailsController < ApplicationController
    def index 
        @emails = Email.all
    end

    def create 
        @emails = Email.create(:body=>Faker::Name.unique.name, :object => Faker::Company.bs)
    end
end

