task :list_labels  => :environment  do
  require 'pp'

  client = Google::APIClient.new
  client.authorization.access_token = Token.access_token
  service = client.discovered_api('gmail')
  result = client.execute(
      :api_method => service.users.labels.list,
      :parameters => {'userId' => 'me'},
      :headers => {'Content-Type' => 'application/json'})

  puts 121321231231132
  JSON.parse(result.body).each do |lebal|

  	 JSON.is_a?(lebal)

  #	puts lebal["name"]
  	 # l=Lebel.new
  	 #  l.lebel_id=lebal['id']
    #   l.name=lebal['name']
    #   l.type=lebal['type']
    #   l.messageList_visibility=lebal['messageListVisibility']
    #   l.labelList_visibility=lebal['id']
  	 #  l.save
  end 	

 # pp JSON.parse(result.body)
end
