require 'rails_helper'

RSpec.describe 'FoodFacilities', type: :request do
  describe '#index' do
    before { get '/food_facilities' }

    it 'returns food facilities' do
      expect(JSON.parse(response.body).length).to eq(5)
    end

    it 'returns :ok status' do

    end
  end

  describe '#show' do
    # 1. ako je validan
      # vraca record
      # vrace :ok
    # 2. ako nije
      # vrace gresku
      # vraca error message i :not_found
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
