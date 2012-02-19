require 'spec_helper'

describe Friend do
  it "requires name presence" do
    subject.should have_at_least(1).error_on(:name)
    subject.name = "Fulano"
    subject.should have(:no).error_on(:name)
  end
  
  it "requires latitude/longitude presence" do
    subject.should have_at_least(1).error_on(:latitude)
    subject.should have_at_least(1).error_on(:longitude)
  end
  
  it "requires a unique latitude/longitude" do
    described_class.create name: 'Joao', latitude: '35', longitude: '51'
    subject.name = 'Foo' # giving a name for the record to be valid
    subject.latitude = '35'
    subject.longitude = '51'
    subject.should_not be_valid
    subject.longitude = '52'
    subject.should be_valid
  end
end
