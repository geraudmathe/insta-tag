class ImageTagging
  def self.tags_for_picture url

    url = URI("http://api.imagga.com/v1/tagging?url=#{url}&version=2")

    http = Net::HTTP.new(url.host, url.port)

    request = Net::HTTP::Get.new(url)
    request["accept"] = 'application/json'
    request["authorization"] = 'Basic YWNjXzUwYWZiODE0NzU2YWQ1MTpjMzA2OThiYTczMGE3NGMxY2Q0M2Y3ZTM4MjU5OTQzYQ=='

    response = http.request(request)
    p JSON.parse(response.read_body)["results"][0]["tags"].map{ |t| t["tag"] }
  end
end