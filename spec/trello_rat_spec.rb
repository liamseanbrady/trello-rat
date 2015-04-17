require_relative 'spec_helper'
require 'trello_rat'
require 'yaml'

describe 'TrelloRat' do
  describe '.get_token' do
    it 'opens a browser window to the token generator url if no token is found' do
      config = YAML.load_file('.config')
      key = config['name']
      app_name = config['app_name']
      trello_rat = TrelloRat.new
      32.times { key << (('a'..'z').to_a + (1..9).to_a).sample.to_s }

      trello_rat.get_token

      # assertion here
    end

    it 'does not open a browser window if a token has already been created'
  end
end
