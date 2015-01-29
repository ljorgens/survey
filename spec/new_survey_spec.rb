require ('spec_helper')

describe(NewSurvey) do

  describe("capitalize_name") do
    it("capitalizes first letter of name") do
      survey = NewSurvey.create({:name => "schools"})
      expect(survey.name()).to(eq("Schools"))
    end
  end
    it{ should have_many(:questions) }
end
