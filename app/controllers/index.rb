get '/' do
  erb :index
end

get '/skills/:skill' do
  erb :skills
end

get '/meals' do
  @meals = ["Spaghetti",
            "Ravioli",
            "Hummus and Veggies",
            "Pizza",
            "Falafel",
            "Sushi",
            "Linguini",
            "Onigilli"]
  @meals.shuffle!
  erb :meals
end

get "/color_picker" do
  erb :color_picker
end

post "/set_color" do
  p params
  response.set_cookie("test_cookie",
                      {value: params[:color],
                      domain: "",
                      path: "/"})
  redirect "/"
end