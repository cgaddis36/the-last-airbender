class Member
  def initialize(attributes)
    # @argument = argument
  end


  def self.find_members(nation)
    service = AvatarService.new
    service.find_members(nation)
  end
end
