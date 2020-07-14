require 'rails_helper'

RSpec.describe "As a visitor" do
  it "I can search for members by their nation" do
    visit '/'

    select "Fire Nation", from: "nation"
    click_on("Search For Members")

    expect(current_path).to eq('/search')

    expect(page).to have_css("#member", count: 20)
    expect(page).to have_css("#name", count: 20)
    expect(page).to have_css("#allies", count: 20)
    expect(page).to have_css("#enemies", count: 20)
    expect(page).to have_css("#affiliation", count: 20)
  end
end
