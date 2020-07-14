require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'instance_methods' do
    it 'initialize' do
      attributes = {
                    name: "aang",
                    enemies: 'Gandolf',
                    allies: 'Darth Vader',
                    photoUrl: 'photo.jpg',
                    affiliation: 'Air Nation'
                    }

      member = Member.new(attributes)

      expect(member).to be_an_instance_of(Member)
      expect(member.name).to eq('aang')
      expect(member.photo).to eq('photo.jpg')
      expect(member.allies).to eq('Darth Vader')
      expect(member.affiliation).to eq('Air Nation')
      expect(member.enemies).to eq('Gandolf')
    end
    it '.find_citizerns' do
        members = Member.find_citizens('water_tribe')
        expect(members.count).to eq(20)
    end
  end
end
