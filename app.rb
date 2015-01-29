require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get("/") do
  @new_survey = NewSurvey.all()
  erb(:index)
end

post("/survey") do
  name = NewSurvey.create({ :name => params.fetch("name") })
  @new_survey = NewSurvey.all()
  erb(:index)
end

get("/new_survey/:id") do
  @new_survey = NewSurvey.find(params.fetch("id").to_i())
  erb(:new_survey)
end

post("/new_survey/:id") do

  query = Question.create({:description => params.fetch("description"), :survey_id => params.fetch("id") })
  @new_survey = NewSurvey.find(params.fetch("id").to_i())
  @question = Question.all()
  erb(:new_survey)
end
