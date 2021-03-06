class Search
  include HTTParty

  def initialize(query)
    @query = "#{query} memes"
    @base_uri = 'https://api.imgur.com/3/gallery/search/viral/all'
  end

  def request
    response =  HTTParty.get(@base_uri,
      :query => { q: @query },
      :headers => { 'Authorization' => "Client-ID #{ENV['IMGUR_CLIENT_ID']}" })
    if response.success?
      JSON.parse(response.body)
    else
      raise response.response
    end
  end
  
end