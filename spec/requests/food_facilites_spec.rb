require 'rails_helper'

RSpec.describe 'FoodFacilities', type: :request do
  describe 'GET' do
    describe '#index' do
      before do
        create_list(:food_facility, 5)
        get '/food_facilities'
      end

      it 'returns food facilities' do
        parsed_response = JSON.parse(response.body)
        expect(parsed_response["data"].length).to eq(5)
      end

      it 'returns :ok status' do
        expect(response).to have_http_status(200)
      end
    end

    describe '#show' do
      before do |variable|
        @food_facility = create(:food_facility)
        get "/food_facilities/#{@food_facility.id}"
      end

      context 'when record exist' do
        it 'returns record' do
          parsed_response = JSON.parse(response.body)
          expect(parsed_response["data"]["id"].to_i).to eq(@food_facility.id)
        end

        it 'returns :ok status' do
          expect(response).to have_http_status(200)
        end
      end

      # 1. ako je validan
        # vraca record
        # vrace :ok
      # 2. ako nije
        # vrace gresku
        # vraca error message i :not_found
    end

  end


  describe '#create' do
    # ako su validni parametri
      # vraca rekord
      # vraca :created
    # ako nisu validni parametri
      # vraca error message
      # vrace :unprocessable_entity
  end

  describe '#update' do
    # ako su validni parametri
      # vraca update-ovan record
      # status ???
  end

  describe '#destroy' do

  end
end
