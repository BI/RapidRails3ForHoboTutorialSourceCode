xml.instruct!
xml.chart :caption => 'Recipies Count by Country' do
  @recipes_count_by_countries.each do |recipe|
    xml.set(:label => recipe.country.try.name, :value => recipe['counter'])
  end
end
