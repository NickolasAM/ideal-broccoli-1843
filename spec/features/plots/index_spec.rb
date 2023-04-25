require 'rails_helper'

describe "plots index page" do
  before :each do
    @garden1 = Garden.create!(name: "Pikes Community Garden", organic: true)

    @plot1 = Plot.create!(number: 1, size: "Large", direction: "East", garden_id: @garden1.id)
    @plot2 = Plot.create!(number: 2, size: "Large", direction: "East",garden_id: @garden1.id)
    @plot1 = Plot.create!(number: 3, size: "Large", direction: "East",garden_id: @garden1.id)
    
    @plant1 = Plant.create!(name: "Jalapeno", description: "Prefers rich, well draining soil.", days_to_havest: 90)
    @plant2 = Plant.create!(name: "Tomatoes", description: "Prefers rich, well draining soil.", days_to_havest: 90)
    @plant3 = Plant.create!(name: "Peppers", description: "Prefers rich, well draining soil.", days_to_havest: 90)
    
    
  end

  it 'lists all plot numbers' do
    visit plots_path()
    expect(page).to have_content(@plot1.number)
    expect(page).to have_content()

    expect(page).to have_content(@plot2.number)
    expect(page).to have_content()


    expect(page).to have_content(@plot3.number)
    expect(page).to have_content()



  end

end