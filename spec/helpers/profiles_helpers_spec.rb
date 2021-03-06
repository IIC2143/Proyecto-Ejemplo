# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Profiles', type: :request do
  include ProfilesHelper
  describe 'Profiles helper methods' do
    it 'should return true' do
      mail = 'iic2143@testing.cl'
      arroba_in_mail(mail).should eq(true)
    end

    it 'should return true' do
      # Notar que si cambiamos 32 por un string
      # el test fallara
      age = 32
      age_is_int(age).should eq(true)
    end
  end
end
