class Member
  attr_reader :name, :enemies, :allies, :photo, :affiliation
  def initialize(attributes)
    @name = attributes[:name]
    @enemies = attributes[:enemies]
    @allies = attributes[:allies]
    @photo = attributes[:photoUrl]
    @affiliation = attributes[:affiliation]
  end


  def self.find_citizens(nation)
    service = AvatarService.new

    members = service.find_members(nation)

    members = members.map do |member|
      Member.new(member)
    end
  end
end
