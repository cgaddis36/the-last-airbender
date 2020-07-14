class AvatarService
  def find_members(nation)
    url = "/api/v1/characters"
    nation = nation.split("_")
    nation1 = nation[0].capitalize
    name = nation[1].capitalize
    nation = nation1 + " " + name
require "pry"; binding.pry
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
