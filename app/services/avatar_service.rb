class AvatarService
  def find_members(nation)
    url = "/api/v1/characters"
    nation1 = nation.split("_")
    nation2 = nation1[0].capitalize
    name = nation1[1].capitalize
    nation = nation2 + " " + name

    get_json(url, nation)
  end

  def get_json(url, nation)
    response = conn.get(url, {affiliation: nation})
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end
end
