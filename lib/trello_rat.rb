class TrelloRat
  def get_token
    config = YAML.load_file('.config')
    key = config['key']
    app_name = config['app_name']
    IO.popen("https://trello.com/1/authorize?key=#{key}&name=#{app_name}&expiration=30days&response_type=token")
  end
end
