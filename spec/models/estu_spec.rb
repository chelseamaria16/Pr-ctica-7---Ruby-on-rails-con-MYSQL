require 'rails_helper'

RSpec.describe Estu, type: :model do
  context "nombre" do
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_most(15) }
    it { should_not allow_value("123123").for(:name) }
    it { should allow_value("abcd").for(:name) }
  end
  context "apellido" do
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_most(15) }
    it { should_not allow_value("123123").for(:name) }
    it { should allow_value("abcd").for(:name) }
  end
  context "carrera" do
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_most(15) }
    it { should_not allow_value("123123").for(:name) }
    it { should allow_value("abcd").for(:name) }
  end
  context "carnet" do
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_most(10) }
    #it { should_not allow_value("123123").for(:name) }
    it { should allow_value("abcd").for(:name) }
  end
end
