require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get("/") do
  @new_survey = NewSurvey.all()
  erb(:index)
end

post("/survey") do
  name = NewSurvey.create({:name => params.fetch("name") })
  @new_survey = NewSurvey.all()
  erb(:index)
end
